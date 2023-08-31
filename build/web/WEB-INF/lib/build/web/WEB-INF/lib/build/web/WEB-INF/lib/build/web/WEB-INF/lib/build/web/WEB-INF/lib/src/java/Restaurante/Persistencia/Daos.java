/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Persistencia;

/**
 *
 * @author docenteitm
 */
import Restaurante.Entidades.ProductoEn;
import Restaurante.Entidades.ReservaEN;
import Restaurante.Entidades.UsuarioEn;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class Daos {
    
    public boolean actualizarUsuario(Connection con, String direccion,String correo,String telefono,String contraseña, int cedula) {
        boolean resultado = true;
        try {
            // Traer la estructura gnral de la consulta 
            String sql = SQLHelper.ActualizarUsuario();
            //PreparedStatement permite configurar la sentecia SQL con todos los datos del programa para su ejecucion 
            PreparedStatement p = con.prepareStatement(sql);
            //Se deben asignar los valores a los  ? que son los parametros de la consulta.... ojo el orden importa

            p.setString(1, direccion);
            p.setString(2, correo);
            p.setString(3, telefono);
            p.setString(4, contraseña);
            p.setInt(5,cedula);

            p.execute();// tanbien puede usar executeUpdate (este retorna el numero de filas afectadas)

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                con.close();
            } catch (Exception clo) {
            }
        }
        return resultado;

    }

    public boolean GuardarUsuario(Connection c, UsuarioEn u) {
        boolean resultado = true;
        try {
            String sql = SQLHelper.GuardarUsuario();
            PreparedStatement p = c.prepareStatement(sql);
            p.setInt(1, u.getCedula());
            p.setString(2, u.getNombre());
            p.setString(3, u.getDireccion());
            p.setString(4, u.getTelefono());
            String clave = u.getClave();
            p.setString(5, u.getClave());
            p.setString(6, u.getCorreo());
            p.setInt(7, 1);

            p.execute();

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                c.close();
            } catch (Exception clo) {
            }

        }
        return resultado;
    }

    public int buscarUsuario(Connection c, UsuarioEn u) {
        int valido = 0;
        try {
            String sql = SQLHelper.ConsultarUsuario();
            PreparedStatement p = c.prepareStatement(sql);
            ResultSet r;
            p.setInt(1, u.getCedula());
            p.setString(2, u.getCorreo());
            int cedula = u.getCedula();
            String correo = u.getCorreo();
            r = p.executeQuery();
            if (r.next()) {
                valido = 1;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                c.close();
            } catch (Exception ex1) {
                ex1.printStackTrace();
            }
        }
        return valido;
    }

    public UsuarioEn buscarUsuarioPorCedula(Connection c, int cedula) {
        int valido = 0;
        UsuarioEn usuarioRetornar = null;
        try {
            String sql = SQLHelper.ConsultarUsuarioPorCedula();
            PreparedStatement p = c.prepareStatement(sql);
            ResultSet r;
            p.setInt(1, cedula);

            r = p.executeQuery();
            if (r.next()) {
                usuarioRetornar = new UsuarioEn();
                usuarioRetornar.setCedula(r.getInt(1));
                usuarioRetornar.setNombre(r.getString(2));
                usuarioRetornar.setDireccion(r.getString(3));
                usuarioRetornar.setTelefono(r.getString(4));
                usuarioRetornar.setClave(r.getString(5));
                usuarioRetornar.setCorreo(r.getString(6));
                usuarioRetornar.setRol(r.getInt(7));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                c.close();
            } catch (Exception ex1) {
                ex1.printStackTrace();
            }
        }
        return usuarioRetornar;
    }
    
    public UsuarioEn buscarUsuarioSesion(Connection c, String correo, String contraseña) {
        int valido = 0;
        UsuarioEn usuarioRetornar = null;
        try {
            String sql = SQLHelper.ConsultarUsuarioSessiones();
            PreparedStatement p = c.prepareStatement(sql);
            ResultSet r;
            p.setString(1, correo);
            p.setString(2, contraseña);
            r = p.executeQuery();
            if (r.next()) {
                usuarioRetornar = new UsuarioEn();
                usuarioRetornar.setCedula(r.getInt(1));
                usuarioRetornar.setNombre(r.getString(2));
                usuarioRetornar.setDireccion(r.getString(3));
                usuarioRetornar.setTelefono(r.getString(4));
                usuarioRetornar.setClave(r.getString(5));
                usuarioRetornar.setCorreo(r.getString(6));
                usuarioRetornar.setRol(r.getInt(7));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                c.close();
            } catch (Exception ex1) {
                ex1.printStackTrace();
            }
        }
        return usuarioRetornar;
    }

    public int IngresarLogin(Connection c, String correo, String contraseña) {
        int valido = 0;
        try {
            String sql = SQLHelper.ConsultarUsuarioLogin();
            PreparedStatement p = c.prepareStatement(sql);
            ResultSet r;
            p.setString(1, correo);
            p.setString(2, contraseña);
            r = p.executeQuery();
            if (r.next()) {
                String correo2, contraseña2;
                correo2 = r.getString(1);
                contraseña2 = r.getString(2);
                valido = 1;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                c.close();
            } catch (Exception ex1) {
                ex1.printStackTrace();
            }
        }
        return valido;
    }

    public boolean guardarReserva(Connection c, ReservaEN h) {
        boolean resultado = true;
        try {
            String sql = SQLHelper.GuardarReserva();
            PreparedStatement p = c.prepareStatement(sql);
            p.setInt(1, 0);
            p.setString(2, h.getFecha());
            p.setString(3, h.getHora());
            p.setInt(4, h.getNcomensales());
            p.setString(5, h.getMensaje());
            p.setInt(6, h.getIdcliente());
            p.execute();

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                c.close();
            } catch (Exception clo) {
            }

        }
        return resultado;
    }

    public ReservaEN buscarReserva(Connection con, String numero) {
        ReservaEN result = null;
        try {
            PreparedStatement p = con.prepareStatement(SQLHelper.BuscarReserva());
            p.setString(1, numero);
            ResultSet r = p.executeQuery();
            if (r.next()) {
                result = new ReservaEN();
                result.setCodigo(r.getInt(1));
                result.setFecha(r.getString(2));
                result.setHora(r.getString(3));
                result.setNcomensales(r.getInt(4));
                result.setMensaje(r.getString(5));
                result.setIdcliente(r.getInt(6));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception ex1) {
                ex1.printStackTrace();
            }
        }
        return result;
    }

    public List<ReservaEN> cargarReservas(Connection con) {
        ReservaEN res = null;
        List<ReservaEN> result = new ArrayList<ReservaEN>();
        try {
            //Se deben asignar los valores a los  ? que son los parametros de la consulta.... ojo el orden importa
            PreparedStatement p = con.prepareStatement(SQLHelper.consultarReservas());

            //Resulset permite recibir el resultado que arroja la consulta select en la base de datos
            ResultSet r = p.executeQuery();
            while (r.next()) {
                res = new ReservaEN();
                res.setCodigo(r.getInt(1));
                res.setFecha(r.getString(2));
                res.setHora(r.getString(3));
                res.setNcomensales(r.getInt(4));
                res.setMensaje(r.getString(5));
                res.setIdcliente(r.getInt(6));
                result.add(res);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception clo) {
            }

        }
        return result;

    }

    public boolean actualizarReserva(Connection con, ReservaEN pr) {
        boolean resultado = true;
        try {
            // Traer la estructura gnral de la consulta 
            String sql = SQLHelper.ActualizarReserva();
            //PreparedStatement permite configurar la sentecia SQL con todos los datos del programa para su ejecucion 
            PreparedStatement p = con.prepareStatement(sql);
            //Se deben asignar los valores a los  ? que son los parametros de la consulta.... ojo el orden importa

            p.setString(1, pr.getFecha());
            p.setString(2, pr.getHora());
            p.setInt(3, pr.getNcomensales());
            p.setString(4, pr.getMensaje());
            p.setInt(5, pr.getCodigo());

            p.execute();// tanbien puede usar executeUpdate (este retorna el numero de filas afectadas)

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                con.close();
            } catch (Exception clo) {
            }
        }
        return resultado;

    }

    public boolean EliminarReserva(Connection con, ReservaEN pr) {
        boolean resultado = true;
        try {
            // Traer la estructura gnral de la consulta 
            String sql = SQLHelper.EliminarReserva();
            //PreparedStatement permite configurar la sentecia SQL con todos los datos del programa para su ejecucion 
            PreparedStatement p = con.prepareStatement(sql);
            //Se deben asignar los valores a los  ? que son los parametros de la consulta.... ojo el orden importa

            p.setInt(1, pr.getCodigo());

            p.execute();// tanbien puede usar executeUpdate (este retorna el numero de filas afectadas)

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                con.close();
            } catch (Exception clo) {
            }
        }
        return resultado;

    }

    public List<ReservaEN> cargarReservasporIDC(Connection con, int idbuscar) {
        ReservaEN res = null;
        List<ReservaEN> result = new ArrayList<ReservaEN>();
        try {
            //Se deben asignar los valores a los  ? que son los parametros de la consulta.... ojo el orden importa
            PreparedStatement p = con.prepareStatement(SQLHelper.consultarRporIDC());
            p.setInt(0, idbuscar);
            //Resulset permite recibir el resultado que arroja la consulta select en la base de datos
            ResultSet r = p.executeQuery();
            while (r.next()) {
                res = new ReservaEN();
                res.setCodigo(r.getInt(1));
                res.setFecha(r.getString(2));
                res.setHora(r.getString(3));
                res.setNcomensales(r.getInt(4));
                res.setMensaje(r.getString(5));
                res.setIdcliente(r.getInt(6));
                result.add(res);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception clo) {
            }

        }
        return result;

    }

    public static String IngresarCodigoProducto(Connection con) {

        int Entrada = 0;
        String sql, numero = "";
        sql = SQLHelper.IngresarCodigoProducto();

        try {
            PreparedStatement p = con.prepareStatement(sql);
            ResultSet r = p.executeQuery();
            while (r.next()) {

                Entrada = Integer.parseInt(r.getString(1));
                Entrada = Entrada + 1;
                numero = String.valueOf(Entrada);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException clo) {
            }

        }

        return numero;
    }

    public boolean guardarProducto(Connection c, ProductoEn pr) {
        boolean resultado = true;
        try {
            String sql = SQLHelper.GuardarProducto();
            PreparedStatement p = c.prepareStatement(sql);
            p.setInt(1, pr.getCodigo());
            p.setString(2, pr.getNombre());
            p.setDouble(3, pr.getValor());
            p.setInt(4, pr.getCantidad());
            p.setBlob(5, pr.getImagen());
            p.setString(6, pr.getEstado());
            p.execute();

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                c.close();
            } catch (Exception clo) {
                clo.printStackTrace();
            }

        }
        return resultado;
    }

    public List<ProductoEn> MostarProductos(Connection con) {
        List<ProductoEn> result = new ArrayList<ProductoEn>();
        try {
            PreparedStatement p = con.prepareStatement(SQLHelper.MostrarProducto());
            ResultSet r = p.executeQuery();
            while (r.next()) {
                ProductoEn c = new ProductoEn();
                c.setCodigo(r.getInt(1));
                c.setNombre(r.getString(2));
                c.setValor(r.getDouble(3));
                c.setCantidad(r.getInt(4));
                c.setImagen(r.getBinaryStream(5));
                c.setEstado(r.getString(6));
                result.add(c);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception clo) {
            }
        }
        return result;
    }

    public void imagenLista(Connection con, int codigo, HttpServletResponse response) {
        String sql = "";
        sql = SQLHelper.MostrarImagenEnLista() + codigo;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("/image/*");

        try {
            outputStream = response.getOutputStream();
            PreparedStatement p = con.prepareStatement(sql);
            ResultSet r = p.executeQuery();
            if (r.next()) {
                inputStream = r.getBinaryStream(1);
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }

        } catch (Exception e) {

        }
    }

    public ProductoEn buscarProducto(Connection con, String numero) {
        ProductoEn result = null;
        try {
            PreparedStatement p = con.prepareStatement(SQLHelper.selectProducto());
            p.setString(1, numero);
            ResultSet r = p.executeQuery();
            if (r.next()) {
                result = new ProductoEn();
                result.setCodigo(r.getInt(1));
                result.setNombre(r.getString(2));
                result.setValor(r.getDouble(3));
                result.setCantidad(r.getInt(4));
                result.setEstado(r.getString(5));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception ex1) {
                ex1.printStackTrace();
            }
        }
        return result;
    }

    public boolean modificarProducto(Connection c, ProductoEn pr) {
        boolean resultado = true;
        try {
            String sql = SQLHelper.modificarProducto();
            PreparedStatement p = c.prepareStatement(sql);

            p.setString(1, pr.getNombre());
            p.setDouble(2, pr.getValor());
            p.setInt(3, pr.getCantidad());
            p.setBlob(4, pr.getImagen());
            p.setString(5, pr.getEstado());
            p.setInt(6, pr.getCodigo());
            p.execute();

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                c.close();
            } catch (Exception clo) {
                clo.printStackTrace();
            }

        }
        return resultado;
    }

    public boolean modificarEstadoProducto(Connection c, int codigo, String estado) {
        boolean resultado = true;
        try {
            String sql = SQLHelper.modificarEstadoProducto();
            PreparedStatement p = c.prepareStatement(sql);

            p.setString(1, estado);
            p.setInt(2, codigo);
            p.execute();

        } catch (Exception ex) {
            ex.printStackTrace();
            resultado = false;
        } finally {
            try {
                c.close();
            } catch (Exception clo) {
                clo.printStackTrace();
            }

        }
        return resultado;
    }
        
}

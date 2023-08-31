/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Negocio;

import Restaurante.Entidades.ProductoEn;
import Restaurante.Persistencia.Daos;
import Restaurante.Utilidades.Conexion;
import java.sql.Connection;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author salak401
 */
public class ProductoNg {
    
    Daos dao = new Daos();
    Conexion c = new Conexion();
    
    public static String IngresarCodigoProducto(Connection con){
    return Daos.IngresarCodigoProducto(con);
    }
    public boolean guardarProducto(Connection c, ProductoEn pr){
    return dao.guardarProducto(c, pr);
    }
    public boolean modificarProducto(Connection c, ProductoEn pr){
    return dao.modificarProducto(c, pr);
    }
    public List<ProductoEn> MostarProductos(Connection con){
    return dao.MostarProductos(con);
    }
    public void imagenLista(Connection con, int codigo, HttpServletResponse response){
    dao.imagenLista(con, codigo, response);
    }
    public ProductoEn buscarProducto(Connection con,String numero){
    return dao.buscarProducto(con, numero);
    }
    public boolean modificarEstadoProducto(Connection c, int codigo,String estado) {
        return dao.modificarEstadoProducto(c, codigo, estado);
    }
}

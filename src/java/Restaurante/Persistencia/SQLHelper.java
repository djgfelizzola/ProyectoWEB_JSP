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
public class SQLHelper {

    public static String ActualizarUsuario(){
        return "UPDATE usuario set direccion=?,Correo=?,Telefono=?,Clave=? where Cedula=?";
    }
            
            public static String GuardarUsuario() {
        return "INSERT INTO usuario(Cedula,Nombre,direccion,Telefono,Clave,Correo,Rol) VALUES (?,?,?,?,?,?,?)";
    }

    public static String ConsultarUsuario() {
        return "SELECT * FROM `usuario` WHERE Cedula=? or Correo=?";
    }

    public static String ConsultarUsuarioLogin() {
        return "SELECT Correo,Clave FROM usuario WHERE Correo=? and Clave=?";
    }

    public static String ConsultarUsuarioSessiones() {
        return "SELECT * FROM usuario WHERE Correo=? and Clave=?";
    }

    public static String ConsultarUsuarioPorCedula() {
        return "SELECT * FROM usuario WHERE Cedula=?";
    }

    public static String GuardarReserva() {
        return "INSERT INTO `reserva`(`Codigo`, `Fecha`, `Hora`, `Ncomensales`, `Mensaje`, `IDcliente`) VALUES (?,?,?,?,?,?)";
    }

    public static String BuscarReserva() {
        return "SELECT `Codigo`, `Fecha`, `Hora`, `Ncomensales`, `Mensaje`, `IDcliente` FROM `reserva` where Codigo =?";
    }

    public static String consultarReservas() {
        return "SELECT `Codigo`, `Fecha`, `Hora`, `Ncomensales`, `Mensaje`, `IDcliente` FROM `reserva` ";
    }

    public static String ActualizarReserva() {
        return "UPDATE `reserva` SET `Fecha`=?,`Hora`=?,`Ncomensales`=?,`Mensaje`=? where Codigo=? ";
    }

    public static String EliminarReserva() {
        return "DELETE FROM `reserva` WHERE `Codigo`=?";
    }

    public static String consultarRporIDC() {

        return "SELECT `Codigo`, `Fecha`, `Hora`, `Ncomensales`, `Mensaje`, `IDcliente` FROM `reserva` WHERE `IDcliente`= ? ";

    }

    public static String IngresarCodigoProducto() {
        return "SELECT max(`Codigo`) FROM `productos`";
    }

    public static String GuardarProducto() {
        return "INSERT INTO `productos`(`Codigo`, `Nombre`, `Valor`, `Cantidad`, `imagen`, `Estado`) VALUES (?,?,?,?,?,?)";
    }

    public static String MostrarProducto() {
        return "SELECT `Codigo`, `Nombre`,`Valor`,`Cantidad`,`imagen`,`estado` FROM `productos` WHERE `Estado`= 'disponible'";
    }

    public static String MostrarImagenEnLista() {
        return "SELECT `imagen` FROM `productos` WHERE `Codigo`=";
    }

    public static String selectProducto() {
        return "SELECT `Codigo`,`Nombre`,`Valor`,`Cantidad`,`Estado` FROM `productos` WHERE `Codigo` = ?";
    }

    public static String modificarProducto() {
        return "UPDATE `productos` SET `Nombre`=?,`Valor`=?,`Cantidad`=?,`imagen`=?,`Estado`=? WHERE `Codigo`=?";
    }

    public static String modificarEstadoProducto() {
        return "UPDATE `productos` SET `Estado`=? WHERE `Codigo`= ?";
    }

    public static String selectHabitaciones() {
        return "Select codigo, tipo,valor from habitacion";
    }

    public static String selectTipos() {
        return "select codigo, nombre from tipos";
    }

    public static String selectUsuario() {
        return "Select perfil from usuario where usuario=? and clave=?";
    }
}

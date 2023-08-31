/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Negocio;

import Restaurante.Entidades.UsuarioEn;
import Restaurante.Persistencia.Daos;
import Restaurante.Utilidades.Conexion;
import java.sql.Connection;

/**
 *
 * @author djgfe
 */
public class UsuarioNg {
  Conexion c=new Conexion();
    Daos dao=new Daos();
    public int ConsultarUsuario(UsuarioEn u){
        return dao.buscarUsuario(c.getCon(), u);
    }
    
    public UsuarioEn ConsultarUsuarioSession(String correo,String contraseña){
        return dao.buscarUsuarioSesion(c.getCon(),correo,contraseña);
    }
    
    public boolean GuardarUsuario(UsuarioEn u){
        return dao.GuardarUsuario(c.getCon(), u);
    }
    
    public int IngresarLogin(String correo,String contraseña){
        return dao.IngresarLogin(c.getCon(), correo, contraseña);
    }
    
    public UsuarioEn ConsultaPorCedula(int cedula){
        return dao.buscarUsuarioPorCedula(c.getCon(), cedula);
    }
    
    public boolean ActualizarUsuario(String direccion,String correo,String telefono,String contraseña, int cedula){
        return dao.actualizarUsuario(c.getCon(), direccion, correo, telefono, contraseña, cedula);
    }
}

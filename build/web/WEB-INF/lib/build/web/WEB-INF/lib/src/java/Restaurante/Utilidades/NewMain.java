/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Utilidades;

import Restaurante.Negocio.ProductoNg;

/**
 *
 * @author saty_
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Conexion con=new Conexion();
        int codigo=0;
        codigo=Integer.parseInt(ProductoNg.IngresarCodigoProducto(con.getCon()));
        System.out.println(codigo);
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Entidades;

import java.io.InputStream;
/**
 *
 * @author salak401
 */
public class ProductoEn {
    
    private int codigo;
    private String nombre;
    private double valor;
    private int cantidad;
    private String estado;
    private InputStream imagen;

    public ProductoEn() {
    }

    public ProductoEn(int codigo, String nombre, double valor, int cantidad, String estado, InputStream imagen) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.valor = valor;
        this.cantidad = cantidad;
        this.estado = estado;
        this.imagen = imagen;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
        this.imagen = imagen;
    }

}
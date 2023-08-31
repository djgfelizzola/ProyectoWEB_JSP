/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Entidades;

import java.sql.Date;

/**
 *
 * @author Juan Diego Gil P
 */
public class ReservaEN {
    private int codigo;
    private String fecha;
    private String hora;
    private int ncomensales;
    private String mensaje;
    private int idcliente;

    public ReservaEN() {
    }

    public ReservaEN(int codigo, String fecha, String hora, int ncomensales, String mensaje, int idcliente) {
        this.codigo = codigo;
        this.fecha = fecha;
        this.hora = hora;
        this.ncomensales = ncomensales;
        this.mensaje = mensaje;
        this.idcliente = idcliente;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getNcomensales() {
        return ncomensales;
    }

    public void setNcomensales(int ncomensales) {
        this.ncomensales = ncomensales;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

   
}

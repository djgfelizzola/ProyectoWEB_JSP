/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Negocio;

import Restaurante.Entidades.ReservaEN;
import Restaurante.Persistencia.Daos;
import Restaurante.Utilidades.Conexion;
import java.sql.Connection;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
/**
 *
 * @author Juan Diego Gil P
 */

public class ReservaNG {

    Daos dao = new Daos();

    Conexion c = new Conexion();

    public ReservaEN buscarReserva(int codigo) {
        ReservaEN h = dao.buscarReserva(c.getCon(), Integer.toString(codigo));
        return h;
    }

    public List<ReservaEN> buscarReservas(Connection con) {
        return dao.cargarReservas(con);
    }

    public boolean guardarreseva(ReservaEN r) {

        return dao.guardarReserva(c.getCon(), r);

    }
    

    public boolean EliminarReseva(ReservaEN r) {

        return dao.EliminarReserva(c.getCon(), r);

    }

    public boolean actualizarReseva(ReservaEN r) {
        return dao.actualizarReserva(c.getCon(), r);
    }
     public List<ReservaEN> buscarReservasporid(int id) {
        return dao.cargarReservasporIDC(c.getCon(),id);
    }
public boolean verificarfecha(Date fe){
java.util.Date dat = new java.util.Date();
if(fe.getTime()>=dat.getTime()){
return true;
}
return false;
}
    //GregorianCalendar date=new GregorianCalendar (2019,04,03);
    public static Date ParseFecha(String fecha) {
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        Date fechaDate = null;
        try {
            fechaDate = (Date) formato.parse(fecha);
        } catch (ParseException ex) {
            System.out.println(ex);
        }
        return fechaDate;
    }

    public String getfecha(Date fc) {
        SimpleDateFormat Formato = new SimpleDateFormat("dd/MM/yyyy");
        if (fc != null) {
            return Formato.format(fc);

        } else {
            return null;
        }

    }

    public Date convertiradate(String fc) {
        SimpleDateFormat Formato = new SimpleDateFormat("yyyy/MM/dd");
        String strFecha = fc;
        java.util.Date fecha = null;
        try {

            fecha = Formato.parse(strFecha);

        } catch (ParseException ex) {

            ex.printStackTrace();

        }
        return (Date) fecha;
    }
}

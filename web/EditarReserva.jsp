<%-- 
    Document   : EditarReserva
    Created on : 13/11/2019, 11:24:40 PM
    Author     : Juan Diego Gil P
--%>

<%@page import="java.sql.Date"%>
<%@page import="Restaurante.Entidades.ReservaEN"%>
<%@page import="Restaurante.Utilidades.Conexion"%>
<%@page import="Restaurante.Negocio.ReservaNG"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar Reservas | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">      
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
          
        
  <%
      
        ReservaNG rNg = new ReservaNG();
        if (request.getParameter("boton") != null) {
            if (request.getParameter("boton").equalsIgnoreCase("Actualizar")) {
                String hora= "" , mensaje = "",fecha="";
                int id=Integer.parseInt(request.getParameter("ID"));
                int cedula = 1,cod=0, comensales=0;
                cod=id;
                  fecha=request.getParameter("fecha");
                hora = request.getParameter("hora");
                comensales = Integer.parseInt(request.getParameter("comensales"));
                mensaje = request.getParameter("mensaje");
                //cedula = Integer.parseInt(request.getParameter("cedula"));
                ReservaEN rEn = new ReservaEN(cod,fecha, hora, comensales, mensaje, cedula);
                
              
                   
                    boolean valido = rNg.actualizarReseva(rEn);
                    if (valido == true) {
                                     %>
    <script>alert('Reserva actualizada con exito!');</script>
    <%
         //session.setAttribute("usuario", usuarioEn);
                        response.sendRedirect("/ProyectoWEB/MostrarReservas.jsp");
        
                } else {
    %>
    <script>alert('Reserva no actualizada, intente nuevamente!');</script>
    <%
                }
            }
}
        
    %>


        <div class="container-fluid" >
            <div class="jumbotron" >
                <center><img class="card-img-top" src="Imagenes/reservation.png" style="width: 200px" style="opacity: 20%" alt="Imagen que ilustra un catalogo."></center>
                <h1>Editar Reservas</h1>
                <p style="text-align:center;">Pacomeralgo te recomienda realizar tu reserva con al menos un(1) día de anticipación para mejor calidad del servicio.</p>
            </div>
        </div>

        <%
            int id=0;
           id=Integer.parseInt(request.getParameter("ID"));
        ReservaEN r=rNg.buscarReserva(id);
        
        %>

       

                        <div class="container" id="formulario">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="EditarReserva.jsp?ID=<%= r.getCodigo()%>" name="Reserva" method="post">
                                <div class="col-md-12">
                                    <p>Fecha: (*)</p>
                                    <input class="center-block form-control" id="fecha" type="date"  name="fecha" min="" value="<%=r.getFecha()%>" required>
                                    <p>Hora: (*)</p>
                                    <select name="hora" class="center-block form-control" id="hora">
                                        <option value=<%=r.getHora()%>><%=r.getHora()%></option>
                                        <option value="10:30 AM">10:30 AM</option>
                                        <option value="11:00 AM">11:00 AM</option>
                                        <option value="11:30 AM">11:30 AM</option>
                                        <option value="12:00 PM">12:00 PM</option>
                                        <option value="12:30 PM">12:30 PM</option>
                                        <option value="01:00 PM">01:00 PM</option>
                                        <option value="01:30 PM">01:30 PM</option>
                                        <option value="02:00 PM">02:00 PM</option>
                                        <option value="02:30 PM">02:30 PM</option>
                                        <option value="03:00 PM">03:00 PM</option>
                                        <option value="03:30 PM">03:30 PM</option>
                                        <option value="04:00 PM">04:00 PM</option>
                                        <option value="04:30 PM">04:30 PM</option>
                                        <option value="05:00 PM">05:00 PM</option>
                                        <option value="05:30 PM">05:30 PM</option>
                                        <option value="06:00 PM">06:00 PM</option>
                                        <option value="06:30 PM">06:30 PM</option>
                                        <option value="07:00 PM">07:00 PM</option>
                                        <option value="07:30 PM">07:30 PM</option>
                                        <option value="08:00 PM">08:00 PM</option>
                                        <option value="08:30 PM">08:30 PM</option>
                                        
                                    </select>
                                    <p>Comensales: (*)</p>
                                    <input class="center-block form-control" value="<%=r.getNcomensales()%>" id="comensales" type="number" maxlength="20" name="comensales" min=0 max=100 placeholder="Ingrese el numero de comensales ..." required>
                                    <p>Mensaje: (*)</p>
                                    <textarea class="center-block form-control"  id="mensaje" maxlength="200" name="mensaje" placeholder="Ingrese el mensaje..." required ><%=r.getMensaje()%></textarea>
                                    <br>
                                    <center><input class="btn btn-warning" id="boton" type="submit" name="boton" value="Actualizar" data-toggle="tooltip" title="Botón para el envío de la información.">
                                        <a  class="btn btn-success" href="MostrarReservas.jsp"  title="Botón para el regresar a página de listado de reservas ">Regresar</a></center>
                                </div>
                            </form>
                              
                        </div>
                    </div>
                </div>
            </div>
        </div>


       <footer>
            <div class="container-fluid" id="pie">
                <div class="row">
                    <div class="col-md-12">
                        <h1 style="text-align:center;">Restaurante</h1>
                        <ul class="list-inline text-center">
                            <li><a href="#"><span class="glyphicon glyphicon-envelope"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-thumbs-up"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-phone-alt"></span></a></li>
                        </ul>
                        <p style="text-align:center;">2019</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <ul class="list-inline text-center">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="Terminos-Y-Condiciones.jsp">Términos y condiciones</a></li>
                            <li><a href="Mapa-del-Sitio.jsp">Mapa del Sitio</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
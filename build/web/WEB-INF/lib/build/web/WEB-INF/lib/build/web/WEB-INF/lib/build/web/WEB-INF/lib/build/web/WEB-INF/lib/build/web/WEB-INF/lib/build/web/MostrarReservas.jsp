<%-- 
    Document   : MostrarReservas
    Created on : 13/11/2019, 12:04:54 AM
    Author     : Juan Diego Gil P
--%>

<%@page import="java.util.AbstractList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Restaurante.Utilidades.Conexion"%>
<%@page import="Restaurante.Entidades.ReservaEN"%>
<%@page import="Restaurante.Negocio.ReservaNG"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mostrar Reservas | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">   
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>

        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Reservas de los clientes</h1> 
                <a class="btn btn-primary" href="Dashboard-Admin.jsp" role="button" >Regresar al Panel del administrador</a>
            </div>
        </div>
        <%

            ReservaNG rNg = new ReservaNG();
            List<ReservaEN> x = new ArrayList<ReservaEN>();

            if (request.getParameter("boton") != null) {
                if (request.getParameter("boton").equalsIgnoreCase("Eliminar")) {
                    String hora = "", mensaje = "", fecha = "";
                    int id = Integer.parseInt(request.getParameter("Id"));
                    int cedula = 1, cod = 0, comensales = 0;
                    cod = id;
                    fecha = null;
                    hora = null;
                    comensales = 0;
                    mensaje = null;
                    //cedula = Integer.parseInt(request.getParameter("cedula"));
                    ReservaEN rEn = new ReservaEN(cod, fecha, hora, comensales, mensaje, cedula);

                    boolean valido = rNg.EliminarReseva(rEn);
                    if (valido == true) {
        %>
        <script>alert('Reserva eliminada con exito!');</script>
        <%
            //session.setAttribute("usuario", usuarioEn);
            //response.sendRedirect("/ProyectoWEB/MostrarReservas.jsp");
        } else {
        %>
        <script>alert('Reserva no eliminada, intente nuevamente!');</script>
        <%
                    }
                }
            }

        %>
        <div class="container buscar">
            <form class="formb " action="MostrarReservas.jsp?ID=<%=request.getParameter("txtbuscar")%>" >
                <input class="form-control " type="number" name="txtbuscar" value="0" >
                <input class="btn " type="submit" value="Buscar">
            </form>


        </div>
        <br>
        <div class="container-fluid">
            <table class="table table-bordered table-responsive table-striped table-hover " style="text-align:center;">
                <tr >
                    <th style="text-align:center;">Codigo</th>
                    <th style="text-align:center;">Fecha</th>
                    <th style="text-align:center;">Hora</th>
                    <th style="text-align:center;">N° comensales</th>
                    <th style="text-align:center;">Mensaje</th>
                    <th style="text-align:center;">Id cliente</th>
                    <th style="text-align:center;">Acciones</th>
                </tr>
                <%
                    Conexion c = new Conexion();

                    x = rNg.buscarReservas(c.getCon());
                %>

                <% for (ReservaEN r : x) {%>
                <tr>

                    <td ><%= r.getCodigo()%></td>
                    <td><%= r.getFecha()%></td>
                    <td><%= r.getHora()%></td>
                    <td><%= r.getNcomensales()%></td>
                    <td><%= r.getMensaje()%></td>
                    <td><%= r.getIdcliente()%></td>
                <form action="MostrarReservas.jsp?ID=<%= r.getCodigo()%>" name="Reserva" method="post">
                    <input class="hidden" id="fecha" type="number"  name="Id" min="" value="<%=r.getCodigo()%>" required >
                    <td>
                    <centre>  <a href="EditarReserva.jsp?ID=<%= r.getCodigo()%>"  class="btn boton-sm btn-warning" title="Botón que redireciona a formulario para editar losx campos.">Editar</a>
                        <input class="boton btn btn-danger" id="boton" type="submit" name="boton" value="Eliminar" data-toggle="tooltip" title="Botón para eliminar la información de una reserva">
                    </centre></td>
                </form>



                </tr>
                <%}%> 
            </table>
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

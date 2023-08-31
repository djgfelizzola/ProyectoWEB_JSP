<%-- 
    Document   : Reserva
    Created on : 7/11/2019, 03:51:00 PM
    Author     : Juan Diego Gil P
--%>
<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page import="java.sql.Date"%>
<%@page import="Restaurante.Entidades.ReservaEN"%>
<%@page import="Restaurante.Utilidades.Conexion"%>
<%@page import="Restaurante.Negocio.ReservaNG"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <%
        UsuarioEn usuarioEn = null;
        if (session.getAttribute("usuario") != null) {
            usuarioEn = (UsuarioEn) session.getAttribute("usuario");

        } else {

        }
    %>
    <head>
        <title>Reservas | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">      
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>


        <%--            <% 
 UsuarioEn usuario=(UsuarioEn)session.getAttribute("usuario");
 out.print(usuario.getClave());

            %> --%>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Este botón despliega la barra de navegación a través del screen reader</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="index.jsp" data-toggle="tooltip" title="Dirige a el inicio de la página.">Restaurante</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="Catalogo.jsp" data-toggle="tooltip" title="Dirige a el catálogo de productos.">Catálogo</a></li>
                        <li> <a href="Reserva.jsp" data-toggle="tooltip" title="Dirige a las reservas.">Reservar</a></li>
                        <li><a href="Contacto.jsp" data-toggle="tooltip" title="Dirige a la información para contacto.">Contáctenos</a></li>   

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li> <a href="MisDatos.jsp" data-toggle="tooltip" title="Dirige a la administración de datos."><%=usuarioEn.getNombre()%></a></li>
                        <li> <a href="CerrarSesion.jsp" data-toggle="tooltip" title="Despliega menú tipo de perfiles.">Cerrar Sessión</a></li>
                    </ul>

                </div>
            </div>
        </nav>
        <%

            ReservaNG rNg = new ReservaNG();
            if (request.getParameter("boton") != null) {
                if (request.getParameter("boton").equalsIgnoreCase("Enviar")) {
                    String hora = "", mensaje = "", fecha = "";

                    int cedula = 1, cod = 0, comensales = 0;
                    fecha = request.getParameter("fecha");
                    hora = request.getParameter("hora");
                    comensales = Integer.parseInt(request.getParameter("comensales"));
                    mensaje = request.getParameter("mensaje");
                    cedula = usuarioEn.getCedula();
                    ReservaEN rEn = new ReservaEN(cod, fecha, hora, comensales, mensaje, cedula);

                    boolean valido = rNg.guardarreseva(rEn);
                    if (valido == true) {
        %>
        <script>alert('Reserva guardada con exito!');</script>
        <%
            //session.setAttribute("usuario", usuarioEn);
            // response.sendRedirect("/ProyectoWEB/MostrarReservas.jsp");
        } else {
        %>
        <script>alert('Reserva no guardada, intente nuevamente!');</script>
        <%
                    }
                }
            }

        %>


        <div class="container-fluid" >
            <div class="jumbotron" >
                <center><img class="card-img-top" src="Imagenes/reservation.png" style="width: 200px" style="opacity: 20%" alt="Imagen que ilustra un catalogo."></center>
                <h1>Reservas</h1>
                <p style="text-align:center;">Pacomeralgo te recomienda realizar tu reserva con al menos un(1) día de anticipación para mejor calidad del servicio.</p>
            </div>
        </div>





        <div class="container" id="formulario">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="Reserva.jsp" name="Reserva" method="post">
                                <div class="col-md-12">
                                    <p>Fecha: (*)</p>
                                    <%java.util.Date d = new java.util.Date();%>
                                    <input class="center-block form-control picker__input picker__input--active" id="fecha" type="date"  name="fecha" min="<%=d.getTime()%>" required>
                                    <p>Hora: (*)</p>
                                    <select name="hora" class="center-block form-control" id="hora">
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
                                    <input class="center-block form-control" id="comensales" type="number" maxlength="20" name="comensales" min=0 max=100 placeholder="Ingrese el numero de comensales ..." required>
                                    <p>Mensaje: (*)</p>
                                    <textarea class="center-block form-control" id="mensaje" maxlength="200" name="mensaje" placeholder="Ingrese el mensaje..." required></textarea>
                                    <br>
                                    <center><input class="btn btn-success" id="boton" type="submit" name="boton" value="Enviar" data-toggle="tooltip" title="Botón para el envío de la información.">
                                        <input  class="btn btn-danger" id="boton" type="reset" name="boton" value="Borrar" data-toggle="tooltip" title="Botón para el borrado de los campos."></center>
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
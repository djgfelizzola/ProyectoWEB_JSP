<%-- 
    Document   : MisDatos
    Created on : 17/11/2019, 1:31:35 p. m.
    Author     : djgfe
--%>

<%@page import="com.sun.xml.ws.security.trust.elements.RequestKET"%>
<%@page import="Restaurante.Negocio.UsuarioNg"%>
<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>


    <%
        UsuarioEn usuarioEn = null;
        UsuarioEn usuarioEn2 = null;
        UsuarioNg usuarioNg = new UsuarioNg();
        if (session.getAttribute("usuario") != null) {
            usuarioEn = (UsuarioEn) session.getAttribute("usuario");
            usuarioEn2 = usuarioNg.ConsultaPorCedula(usuarioEn.getCedula());

        } else {
            response.sendRedirect("/ProyectoWEB/CerrarSesion.jsp");
        }
    %>
    <script>alert('Bienvenido | <%=usuarioEn.getNombre()%>');</script>
    <%
        if (request.getParameter("boton") != null) {
            if (request.getParameter("boton").equalsIgnoreCase("Guardar")) {
                String direccion = "", telefono = "", clave = "", correo = "";

                direccion = request.getParameter("direccion");
                telefono = request.getParameter("telefono");
                boolean valido = usuarioNg.ActualizarUsuario(direccion, usuarioEn.getCorreo(), telefono, request.getParameter("password"), usuarioEn.getCedula());
                if (valido == true) {
                    response.sendRedirect("/ProyectoWEB/ActualizacionDatos.jsp");

                } else {
    %>
    <script>alert('Falla al actualizar, intente nuevamente!');</script>
    <%
                }
            }
        }
    %>
    <head>
        <title><%=usuarioEn.getNombre()%> | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>

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
                    <li> <a href="CerrarSesion.jsp" data-toggle="tooltip" title="Cerrar sesión del usuario.">Cerrar Sesión</a></li>
                </ul>

            </div>
        </div>
    </nav>




    <div class="container-fluid">
        <div class="jumbotron">
            <div class="text-center">
                <img src="Imagenes/30427.png" class="rounded" alt="Imagen que representa mis datos." id="imagenCentral">
            </div>
            <h1 style="text-align:center;">Mis Datos</h1>
            <p style="text-align:center;">Permite actualizar la información del usuario</p>
        </div>
    </div>


    <div class="container" id="actualizar">

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="col-md-12">                
                            <form name="inicioForm" action="MisDatos.jsp" method="post"><center>

                                    <div class="form-group">
                                        <label for="direccionUsuario">Dirección</label>
                                        <input type="text" class="form-control" value="<%=usuarioEn2.getDireccion()%>" name="direccion" id="Direccion" placeholder="Ingrese dirección...">
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="telefonoUsuario">Teléfono:</label>
                                            <input type="number" class="form-control" value="<%=usuarioEn2.getTelefono()%>" name="telefono" id="telefono" placeholder="Ingrese teléfono...">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="contraseñaUsuario">Contraseña:</label>
                                            <input type="password" class="form-control" name="password" value="<%=usuarioEn2.getClave()%>" id="contraseña" placeholder="Ingrese contraseña..." required="true">
                                        </div>
                                    </div>

                                    <input class="btn btn-success" id="boton" type="submit" name="boton" value="Guardar" data-toggle="tooltip" title="Botón para el envío de la información.">
                                    </form></center>

                        </div>
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
</html>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
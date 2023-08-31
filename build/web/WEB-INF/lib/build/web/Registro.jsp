<%-- 
    Document   : Registro
    Created on : 29/10/2019, 12:43:33 p. m.
    Author     : djgfe
--%>

<%@page import="Restaurante.Negocio.UsuarioNg"%>
<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Registro | Pacomeralgo</title>
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
                    <li><a href="Nosotros.jsp" data-toggle="tooltip" title="Dirige a la información general del restaurante.">Descúbrenos</a></li>
                    <li><a href="Catalogo.jsp" data-toggle="tooltip" title="Dirige a el catálogo de productos.">Catálogo</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Contacto.jsp" data-toggle="tooltip" title="Dirige a la información para contacto.">Contáctenos</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-toggle="tooltip" title="Despliega menú tipo de perfiles.">Iniciar Sesión</a>
                        <div style="background-color: #404E6B" class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="Login.jsp" data-toggle="tooltip" title="Dirige a el inicio de sesión para clientes.">Inicio de Clientes</a><br>
                            <a class="dropdown-item" href="Login.jsp" data-toggle="tooltip" title="Dirige a el inicio de sesión para empleados.">Inicio personal del restaurante</a>
                        </div>
                    </li>
                    <li><a href="Registro.jsp" data-toggle="tooltip" title="Dirige a el formulario de registro." >Regístrate</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <%
        UsuarioNg usuarioNg = new UsuarioNg();
        if (request.getParameter("boton") != null) {
            if (request.getParameter("boton").equalsIgnoreCase("Registrarse")) {
                String nombre = "", direccion = "", telefono = "", clave = "", correo = "";
                int cedula = 0;
                nombre = request.getParameter("nombre");
                direccion = request.getParameter("direccion");
                telefono = request.getParameter("telefono");
                correo = request.getParameter("correo");
                cedula = Integer.parseInt(request.getParameter("cedula"));
                UsuarioEn usuarioEn = new UsuarioEn(cedula, nombre, direccion, telefono, request.getParameter("password"), correo, 1);
                int valido = usuarioNg.ConsultarUsuario(usuarioEn);
                if (valido == 0) {
                    boolean valido2 = usuarioNg.GuardarUsuario(usuarioEn);
                    if (valido2 == true) {
                                     %>
                                     
    <script>alert('Usuario registrado con exito!, por favor inicie sesión');</script>
    <%
                       session.setAttribute("usuario", usuarioEn);
                       response.sendRedirect("/ProyectoWEB/MisDatos.jsp");
                    }
                } else {
    %>
    <script>alert('Usuario no registrado, intente nuevamente!');</script>
    <%
                }
            }
        }
    %>

    <div class="container-fluid">
        <div class="jumbotron">
            <div class="text-center">
                <img src="Imagenes/Registro.png" class="rounded" alt="Imagen que representa un formulario." id="imagenCentral">
            </div>
            <h1 style="text-align:center;">Registro Restaurante</h1>
            <p style="text-align:center;">Debes diligenciar cada uno de los siguientes campos para recibir un mejor servicio.</p>
        </div>
    </div>


    <div class="container" id="registro">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="col-md-12">                
                            <form name="inicioForm" action="Registro.jsp" method="post"><center>
                                    <div class="form-group">
                                        <label for="nombreUsuario">Nombre:</label>
                                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingrese nombre..." required="true">
                                    </div>
                                    <div class="form-group">
                                        <label for="direccionUsuario">Dirección</label>
                                        <input type="text" class="form-control" name="direccion" id="Direccion" placeholder="Ingrese dirección...">
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="telefonoUsuario">Teléfono:</label>
                                            <input type="number" class="form-control" name="telefono" id="telefono" placeholder="Ingrese teléfono...">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="cedulaUsuario">Cédula:</label>
                                            <input type="number" class="form-control" name="cedula" id="cedula" placeholder="Ingrese cedula..." required="true">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="correoUsuario">Correo:</label>
                                            <input type="email" class="form-control" name="correo" id="correo" placeholder="Ingrese correo..." required="true">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="contraseñaUsuario">Contraseña:</label>
                                            <input type="password" class="form-control" name="password" id="contraseña" placeholder="Ingrese contraseña..." required="true">
                                        </div>
                                    </div>
                                    <input class="btn btn-success" id="boton" type="submit" name="boton" value="Registrarse" data-toggle="tooltip" title="Botón para el envío de la información.">
                                    <input  class="btn btn-danger" id="boton" type="reset" name="boton" value="Borrar" data-toggle="tooltip" title="Botón para el borrado de los campos.">
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



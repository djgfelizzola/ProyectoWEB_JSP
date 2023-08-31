<%-- 
    Document   : Login
    Created on : 29/10/2019, 12:42:50 p. m.
    Author     : djgfe
--%>

<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page import="Restaurante.Negocio.UsuarioNg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <title>Inicio de sesión | Pacomeralgo</title>
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







<div class="jumbotron">
    <center><img class="card-img-top" src="Imagenes/login-images-png-3.png" id="imagenCentral" alt="Imagen que representa el iniciar sesión."></center>
    <h1 style="text-align:center;">Iniciar Sesión</h1>
    <p style="text-align:center;">Inicio de sesión para uso de privilegios en el restaurante.</p>
</div>

<%

    String correo = "", contraseña = "";
    UsuarioNg usuarioNg = new UsuarioNg();
    UsuarioEn usuarioEn;
    if (request.getParameter("boton") != null) {
        if (request.getParameter("boton").equalsIgnoreCase("Iniciar")) {
            correo = request.getParameter("correo");
            contraseña = request.getParameter("password");
            int valido = usuarioNg.IngresarLogin(correo, request.getParameter("password"));

            if (valido == 1) {

                usuarioEn = usuarioNg.ConsultarUsuarioSession(correo, request.getParameter("password"));
                if (usuarioEn.getRol() == 1) {
                    session.setAttribute("usuario", usuarioEn);
                    response.sendRedirect("/ProyectoWEB/MisDatos.jsp");
                } else {
                    if (usuarioEn.getRol() == 2) {
                        session.setAttribute("usuario", usuarioEn);
                        response.sendRedirect("/ProyectoWEB/Dashboard-Admin.jsp");
                    }
                }

            } else {
%>
<script>alert('Usuario y/o contraseña incorrecta');</script>
<%
            }
        }
    }
%>
<div class="container" id="inicio">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form actionLogin.jsp="" name="ContactoForm" method="post">
                        <div class="col-md-12">
                            <p>Correo:</p>
                            <input class="center-block form-control" id="correo" type="email" name="correo" name="correo" required="true" placeholder="Ingrese Correo...">

                            <p>Contraseña:</p>
                            <input type="password"  class="center-block form-control" name="password" required="true" placeholder="Ingrese Contraseña..."> 

                            <br>

                            <br>
                            <center><input class="btn btn-primary btn-lg btn-block"  id="boton"  type="submit" name="boton" value="Iniciar" data-toggle="tooltip" title="Botón para inicio de sesión." >
                                <input class="btn btn-secondary btn-lg btn-block" id="boton" type="reset" name="boton" value="Borrar" data-toggle="tooltip" title="Botón para el borrado de los campos."></center>
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



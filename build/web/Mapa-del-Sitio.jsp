<%-- 
    Document   : Mapa-del-Sitio
    Created on : 29/10/2019, 12:43:11 p. m.
    Author     : djgfe
--%>

<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mapa del Sitio | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">        
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
         <%        UsuarioEn usuarioEn = null;

            if (session.getAttribute("usuario") != null) {
                usuarioEn = (UsuarioEn) session.getAttribute("usuario");

        %>
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


        <%} else {%>
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

        <%}%>


        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Mapa del Sitio</h1>
            </div>
        </div>

        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <h2>Inicio de Pacomeralgo</h2>
                    <div class="row">
                        <div class="col-md-12">
                            <h4><a href="index.jsp#sesion">Inicio de sesión por usuarios</a></h4>
                        </div>
                        <div class="col-md-12">
                            <h4><a href="index.jsp#acercade">Conoce un poco de nuestra marca</a></h4>
                        </div>
                        <div class="col-md-12">
                            <h4><a href="index.jsp#lacarta">Conoce nuestra carta</a></h4>
                        </div>
                        <br>
                        <h2>Catálogo</h2>
                        <div class="col-md-12">
                            <h4><a href="Catalogo.jsp#carta">Conoce nuestra carta</a></h4>
                        </div>
                        <h2>Términos y condiciones</h2>
                        <div class="col-md-12">
                            <h4><a href="Terminos-Y-Condiciones.jsp#tc">Conoce nuestros términos y condiciones</a></h4>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="row">
                        <h2>Nosotros</h2>
                        <div class="col-md-12">
                            <h4><a href="Nosotros.jsp#mision">Nuestra misión</a></h4>
                        </div>
                        <div class="col-md-12">
                            <h4><a href="Nosotros.jsp#vision">Nuestra visión</a></h4>
                        </div>
                        <h2>Ingreso al modulo</h2>
                        <div class="col-md-12">
                            <h4><a href="Login.jsp#inicio">Ingresa como cliente</a></h4>
                        </div>
                        <div class="col-md-12">
                            <h4><a href="Login.jsp#inicio">Ingresa como empleado</a></h4>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">
                    <div class="row">
                        <h2>Contáctenos</h2>
                        <div class="col-md-12">
                            <h4><a href="Catalogo.jsp#formulario">Formulario de contacto</a></h4>
                        </div>
                        <h2>Registrate</h2>
                        <div class="col-md-12">
                            <h4><a href="Registro.jsp#registro">Registraté en nuestro aplicativo</a></h4>
                        </div>
                    </div>

                </div>
            </div>
            <br>
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


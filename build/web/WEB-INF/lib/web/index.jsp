<%-- 
    Document   : index
    Created on : 29/10/2019, 12:44:23 p. m.
    Author     : djgfe
--%>

<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio | Pacomeralgo</title>
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
                        <li> <a href="CerrarSesion.jsp" data-toggle="tooltip" title="Despliega menú tipo de perfiles.">Cerrar Sessión</a></li>
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
        <div class="header" id="sesion">
            <div class="row">
                <div class="col-md-12">
                    <img src="Imagenes/chefLogo.png" alt="logoDeMarca" width="125 px">
                    <h1 style="text-align:center;">Pacomeralgo</h1>
                    <p style="text-align:center;">Pedidos fáciles al alcance de un clic.</p>
                    <br>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <img class="card-img-top" src="Imagenes/Personal.jpg" style="width: 300px" alt="Imagen del personal del restaurante.">
                        <div class="card-body">
                            <h4 class="card-title">Para personal del restaurante</h4>
                            <p class="card-text">Ingresa al módulo adecuado a tus funcionalidades a cargo.</p>
                            <a href="Login.jsp" class="btn btn-primary" data-toggle="tooltip" title="Dirige al inicio de sesión.">Ir ahora</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <img class="card-img-top" src="Imagenes/cliente.jpg" style="width: 300px" alt="Imagen de cliente pagando su pedido.">
                        <div class="card-body">
                            <h4 class="card-title">Para clientes del restaurante</h4>
                            <p class="card-text">Si deseas hacer un pedido y mirar nuestra carta, puedes registrarte o acceder como invitado</p>
                            <a href="Login.html" class="btn btn-primary" data-toggle="tooltip" title="Dirige al inicio de sesión.">¿Que esperas para ingresar?</a>
                            <a href="Catalogo.jsp" class="btn btn-primary" data-toggle="tooltip" title="Dirige al catalogo de productos">¿Ingresa sin registrarte?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container" id="acercade">
            <center>
                <div class="row">
                    <div class="col-md-6">
                        <h2>Pacomeralgo es el mejor aplicativo para manejar tu restaurante</h2><br>
                        <p align="justify">La situación habitual en un restaurante en cuanto a pedidos, tiempo de espera, facturación correcta, entre otros, no es la más ideal en la mayoría de los casos, lo que hace que resulte difícil dar un buen servicio al cliente, sobre todo durante las horas de mayor ocupación del local.<br>Por eso ha nacido Pacomeralgo, un software amigable con todos los usuarios, desde el personal del restaurante, hasta el usuario final pueden usar nuestra aplicación sin ningún problema, ¿Quieres conocer más de nosotros y nuestra institucionalidad?, haz clic en el botón.</p>
                        <a href="Nosotros.jsp" class="btn btn-primary" data-toggle="tooltip" title="Dirige al apartado de información del restuarante">¿Descubre más de nosotros?</a>
                    </div>

                    <div class="col-md-6">
                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                <img src="Imagenes/burger.png" alt="Imagen de hamburgesa" style="width:125px" id="pic">
                            </div>
                            <div class="col-md-4">
                                <img src="Imagenes/bar.png" alt="imagen de un bar" style="width:125px" id="pic">
                            </div>
                            <div class="col-md-4">
                                <img src="Imagenes/cheers.png" alt="Imagen de unas cervezas" style="width:125px" id="pic">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                <img src="Imagenes/professions-and-jobs.png" alt="Imagen de un chef" style="width:125px" id="pic">
                            </div>
                            <div class="col-md-4">
                                <img src="Imagenes/store.png" alt="Imagen de una tienda" style="width:125px" id="pic">
                            </div>
                            <div class="col-md-4">
                                <img src="Imagenes/tray.png" alt="Imagen de un pedido" style="width:125px" id="pic">
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </center>
        </div>


        <div class="container-fluid">
            <img class="img-responsive" src="Imagenes/2625.jpg" alt="Imagen plato de comida">
        </div>

        <div class="container" id="lacarta">
            <div class="row">
                <div class="col-md-6">
                    <h1 style="text-align:center;">Conoce nuestra carta y antojate de todo lo bueno que tiene la vida.</h1>
                    <a href="Catalogo.jsp" class="btn btn-primary" data-toggle="tooltip" title="Dirige a el catalogo de productos">Conoce la carta de Pacomeralgo</a>
                </div>

                <div class="col-md-6">
                    <img class="img-responsive" src="Imagenes/cartaSample.jpg" alt="Imagen de una carta de productos">
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

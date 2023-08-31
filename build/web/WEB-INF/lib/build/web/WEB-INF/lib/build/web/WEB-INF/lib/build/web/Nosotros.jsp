<%-- 
    Document   : Nosotros
    Created on : 29/10/2019, 12:43:24 p. m.
    Author     : djgfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nosotros | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">   
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
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


        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Acerca de nosotros</h1>
            </div>
        </div>

        <div class="container">
            <center>
                <div class="row">
                    <div class="col-md-12">
                        <h2>Pacomeralgo es el mejor aplicativo para manejar tu restaurante...</h2><br>
                        <br>
                    </div>
                    <div class="col-md-4">
                        <img src="Imagenes/burger.png" alt="Imagen de hamburgesa" style="width:125px" id="pic">
                    </div>
                    <div class="col-md-4">
                        <img src="Imagenes/bar.png" alt="Imagen de un bar" style="width:125px" id="pic">
                    </div>
                    <div class="col-md-4">
                        <img src="Imagenes/cheers.png" alt="Imagen de unas cervezas" style="width:125px" id="pic">
                    </div>  
                </div>
                <br>
            </center>
        </div>

        <div class="container" id="mision">
            <div class="row">
                <div class="col-md-6">
                    <h2>Nuestra Misión</h2><br>
                    <p align="justify">Para el año 2025 el restaurante Pacomeralgo, prestará servicios de gran nivel con estándares de Calidad superior, seguridad y humanización del servicio, convirtiéndose en referente para la región y en factor esencial para el desarrollo, enmarcado en los principios y valores institucionales y así que el cliente regrese.</p>
                    <br>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive" src="Imagenes/2625.jpg" alt="Imagen plato de comida.">
                </div>
            </div>
            <br>
        </div>

        <div class="container" id="vision">
            <div class="row">
                <div class="col-md-6">
                    <img class="img-responsive" src="Imagenes/2625.jpg" alt="Imagen plato de comida.">
                </div>
                <div class="col-md-6">
                    <h2>Nuestra Visión...</h2><br>
                    <p align="justify">El restaurante Pacomeralgo brinda servicios en una nueva sede y su área de influencia en a nivel gastronómicos tendrá grandes estándares, con calidad y calidez, centrados en la en el buen sabor a través de un talento humano calificado, con vocación de servicio para así ofrecer a nuestros clientes sensaciones agradables y momentos felices.</p>
                    <br>
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

<%-- 
    Document   : Catalogo
    Created on : 29/10/2019, 12:42:29 p. m.
    Author     : djgfe
--%>

<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page import="Restaurante.Utilidades.Conexion"%>
<%@page import="Restaurante.Entidades.ProductoEn"%>
<%@page import="Restaurante.Negocio.ProductoNg"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        ProductoEn productoEn = new ProductoEn();
        ProductoNg productoNg = new ProductoNg();
        Conexion con = new Conexion();
    %>
    <head>
        <title>Catálogo | Pacomeralgo</title>
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


        <div class="container-fluid" >
            <div class="jumbotron" >
                <center><img class="card-img-top" src="Imagenes/catalogo2.png" style="width: 200px" style="opacity: 20%" alt="Imagen que ilustra un catalogo."></center>
                <h1>CATÁLOGO</h1>
            </div>
        </div>

        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <center><img src="Imagenes/lasagna.jpg" alt="Imagen que ilustra el plato: Lasaña francesa." id="imagen" ></center>
                        <div class="carousel-caption">
                            <h3>Lasaña Francesa</h3>
                            <p>Uno de los mejores platos de la casa.</p>
                        </div>
                    </div>

                    <div class="item">
                        <center><img src="Imagenes/pollo.jpg" alt="Imagen que ilustra el plato: Pollo con champiñones." id="imagen" ></center>
                        <div class="carousel-caption">
                            <h3>Pollo con champiñones</h3>
                            <p>Uno de los platos con mayor petición.</p>
                        </div>
                    </div>

                    <div class="item">
                        <center><img src="Imagenes/vegetales.jpg" alt="Imagen que ilustra el plato: Ensalada de vegetales." id="imagen" ></center>
                        <div class="carousel-caption">
                            <h3>Ensalada de vegetales</h3>
                            <p>Lo más saludable que encontrarás. </p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>


        <%
            List<ProductoEn> lista = productoNg.MostarProductos(con.getCon());
        %>

        <div class="container" id="carta">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel-body">
                        <div class="row">
                            <!-- <c:forEach var="dato" items="${lista}"> -->
                            <% for (ProductoEn dato : lista) {%>
                            <div class="col-md-4">
                                <div class="card">
                                    <img src="ControlerIMG?codigo=<%= dato.getCodigo()%>" width="250" height="230 ">
                                    <div class="card-body">
                                        <h4 class="card-title"><%= dato.getNombre()%></h4>
                                        <p class="card-text">
                                            <%= dato.getCantidad()%>
                                            <br>
                                            <%= dato.getValor()%>
                                        </p>
                                        <a style="text-align: center;" href="#" class="btn btn-success" data-toggle="tooltip" title="Añade un pruducto a tu pedido.">Añadir</a>
                                    </div>
                                </div>
                            </div>
                            <!-- </c:forEach> -->
                            <% }%>
                        </div>
                        <br>
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

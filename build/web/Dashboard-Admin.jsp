<%-- 
    Document   : Dashboard-Admin
    Created on : 15/11/2019, 01:09:03 PM
    Author     : saty_
--%>

<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Panel | Administrador</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">     
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
        <%UsuarioEn usuarioEn = null;
            if (session.getAttribute("usuario") != null) {
                usuarioEn = (UsuarioEn) session.getAttribute("usuario");
            }%>
        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Panel del Administrador</h1>
                <h2 style="text-align:center;">Sr(a) <%=usuarioEn.getNombre()%></h2>
            </div>
        </div>

        <div class="container" id="tc">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="col-md-4">                
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <h2 style="text-align:center;">Ingreso de productos</h2>
                                        <a class="btn btn-primary" href="Ingreso-productos.jsp" title="Dirige a la pagina para ingreso de productos." role="button">Ir ahora</a>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-md-4">                
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <h2 style="text-align:center;">Modificar Productos</h2>
                                        <a class="btn btn-primary" title="Dirige a la pagina para modificación de productos." href="Modificar-Productos.jsp" role="button">Ir ahora</a>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-md-4">                
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <h2 style="text-align:center;">Cambiar disponibilidad del producto</h2>
                                        <a class="btn btn-primary" title="Dirige a la pagina para cambiar la disponibilidad de productos." href="ModificarEstado.jsp" role="button">Ir ahora</a>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-md-4">                
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <h2 style="text-align:center;">Mostrar Reservas</h2>
                                        <a class="btn btn-primary" title="Dirige a la pagina para mostrar las reservas actuales del negocio."  href="MostrarReservas.jsp" role="button">Ir ahora</a>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-md-4">                
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <h2 style="text-align:center;">Cerrar sesión</h2>
                                        <a class="btn btn-primary" title="Cerrar sesión del usuario." href="CerrarSesion.jsp" role="button">Salir del sistema</a>
                                    </div>
                                </div> 
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

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

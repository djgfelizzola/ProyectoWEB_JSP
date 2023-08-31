<%-- 
    Document   : Contacto
    Created on : 29/10/2019, 12:42:40 p. m.
    Author     : djgfe
--%>

<%@page import="Restaurante.Entidades.UsuarioEn"%>
<%@page import="Restaurante.Utilidades.Mensajero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contáctenos | Pacomeralgo</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">   
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
       <%    
            UsuarioEn usuarioEn=null;
String nombre2="",correo2="";
    if (session.getAttribute("usuario") != null) {
             usuarioEn = (UsuarioEn) session.getAttribute("usuario");
             nombre2=usuarioEn.getNombre();
             correo2=usuarioEn.getCorreo();
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

        <%
            Mensajero men=new Mensajero();
            
            if (request.getParameter("boton") != null) {
                if (request.getParameter("boton").equalsIgnoreCase("Enviar")) {
                    String nombre = "", correo = "", asunto = "", mensaje = "", texto = "", texto1 = "", textof = "";
                    nombre = request.getParameter("nombre");
                    correo = request.getParameter("correo");
                    asunto = request.getParameter("asunto");
                    mensaje = request.getParameter("mensaje");
                    texto1 = "RESTAURANTE PACOMERALGO \n Enviado por cliente : " + nombre + "\n" + "Correo electronico: " + correo + ".";
                    textof = texto1 + "\n Mensaje: \n" + mensaje;
                    men.correosingular("pacomeralgomedellin@gmail.com", asunto, textof);
                    %>
                    <script>alert('Se ha enviado su mensaje :)')</script>
                    <%
                }
            }


        %>


        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Contáctenos</h1>
                <p style="text-align:center;">Para nosotros es muy importante conocer su opinión, Diligenciado el formulario, un asesor se comunicará con usted en las próximas 24 horas.</p>
            </div>
        </div>

             
        <div class="container" id="formulario">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="Contacto.jsp" name="ContactoForm" method="post">
                                <div class="col-md-12">
                                    <p>Nombre: (*)</p>
                                    <input class="center-block form-control" value="<%=nombre2%>" id="nombre" type="text" maxlength="20" name="nombre" placeholder="Ingrese su nombre..." required>
                                    <p>Correo: (*)</p>
                                    <input class="center-block form-control" value="<%=correo2%>" id="correo" type="text" maxlength="50" name="correo" placeholder="Ingrese su correo..." required>
                                    <p>Asunto (*)</p>
                                    <input class="center-block form-control" id="asunto" type="text" maxlength="20" name="asunto" placeholder="Ingrese el asunto..." required>
                                    <p>Mensaje: (*)</p>
                                    <textarea class="center-block form-control" id="mensaje" maxlength="200" name="mensaje" placeholder="Ingrese el mensaje a enviar..." required></textarea>
                                    <br>
                                    <center><input id="Enviar" class="btn btn-success" type="submit" value="Enviar" name="boton" data-toggle="tooltip" title="Envía la información."></center>
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

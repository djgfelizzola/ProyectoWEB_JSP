<%-- 
    Document   : ModificarEstado
    Created on : 15/11/2019, 05:24:00 PM
    Author     : saty_
--%>

<%@page import="Restaurante.Negocio.ProductoNg"%>
<%@page import="java.io.InputStream"%>
<%@page import="Restaurante.Utilidades.Conexion"%>
<%@page import="Restaurante.Entidades.ProductoEn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar Estado | Administrador</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">     
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
        <%
            Conexion con = new Conexion();
            String codigo = "", nombre = "", valor = "", cantidad = "", estado = "";
            int sw = 0;
            InputStream imagen;
            Part part;
            ProductoNg productoNg = new ProductoNg();
            ProductoEn productoE;
            Conexion c = new Conexion();
            if (request.getParameter("botone") != null) {
                if (request.getParameter("botone").equalsIgnoreCase("Buscar")) {
                    productoE = productoNg.buscarProducto(c.getCon(), request.getParameter("codigo"));
                    if (productoE != null) {
                        sw = 1;
                        codigo = String.valueOf(productoE.getCodigo());
                        nombre = productoE.getNombre();
                        valor = String.valueOf(productoE.getValor());
                        cantidad = String.valueOf(productoE.getCantidad());
                        estado = productoE.getEstado();
                    } else {
                        sw = 2;
                    }
                }

            }
            if (request.getParameter("boton") != null) {
                if (request.getParameter("boton").equalsIgnoreCase("enviar")) {
                    if(productoNg.modificarEstadoProducto(c.getCon(), Integer.parseInt(request.getParameter("codigo")),request.getParameter("estado"))){
                    response.sendRedirect("/ProyectoWEB/ModificarEstado.jsp");
                    } else {
                        response.sendRedirect("/ProyectoWEB/Dashboard-Admin.jsp");
                    }
                    
                }

            }
            

        %>
        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Modificar estado de los Producto</h1>
                <a class="btn btn-primary" href="Dashboard-Admin.jsp" role="button" >Regresar al Panel del administrador</a>
            </div>
        </div>
        <div class="container" id="tc">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="ModificarEstado.jsp" name="ModificarForm" method="post">
                                <div class="col-md-12">                
                                    <center>
                                        <div class="form-group">
                                            <label for="nombre">Ingrese el codigo del producto a modificar:</label>
                                            <input type="number" class="form-control" id="codigo" name="codigo" placeholder="Ingrese codigo..." required="true" value="<%=codigo%>">
                                        </div>
                                        <input class="btn btn-success" id="boton" type="submit" name="botone" value="Buscar" data-toggle="tooltip" title="Botón para el envío de la información.">
                                        <input  class="btn btn-danger" id="boton" type="reset" value="Borrar" data-toggle="tooltip" title="Botón para el borrado de los campos.">
                                    </center>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%if (sw == 1) {%>
        <div class="container" id="tc">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="ModificarEstado.jsp" name="Modificar1Form" method="post">
                                <div class="col-md-12">                
                                    <center>
                                        <div class="form-group">
                                            <label for="nombre">Codigo</label>
                                            <input type="number" class="form-control" id="codigo" name="codigo" placeholder="Ingrese codigo..." required="true" value="<%=codigo%>">
                                        </div>
                                        <div class="form-group">
                                            <label for="nombre">Ingrese el estado</label>
                                            <input type="text" class="form-control" id="estado" name="estado" placeholder="Ingrese el estado..." required="true" value="<%=estado%>">
                                        </div>
                                        <input class="btn btn-success" id="boton" type="submit" name="boton" value="enviar" data-toggle="tooltip" title="Botón para el envío de la información.">
                                        <input  class="btn btn-danger" id="boton" type="reset" value="Borrar" data-toggle="tooltip" title="Botón para el borrado de los campos.">
                                    </center>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
        <%if (sw == 2) { %>
        <div class="container" id="tc">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="jumbotron">
                                    <h2 style="text-align:center;">Error al encontrar el producto, recuerde digitar bien el codigo para su correcta busqueda</h2>
                                    <a class="btn btn-primary" href="Modificar-Productos.jsp" role="button">Ir ahora</a>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%}
        %>

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
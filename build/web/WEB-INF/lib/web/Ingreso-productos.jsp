<%-- 
    Document   : Ingreso-productos
    Created on : 30/10/2019, 10:45:34 AM
    Author     : salak401
--%>

<%@page import="java.io.InputStream"%>
<%@page import="Restaurante.Utilidades.Conexion"%>
<%@page import="Restaurante.Negocio.ProductoNg"%>
<%@page import="Restaurante.Entidades.ProductoEn"%>
<%@page import="java.awt.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ingreso Productos | Administrador</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">     
        <link rel="icon" href="Imagenes/chefLogo.ico">
    </head>
    <body>
        <div class="container-fluid">
            <div class="jumbotron">
                <h1 style="text-align:center;">Ingreso de Productos</h1>
                <a class="btn btn-primary" href="Dashboard-Admin.jsp" role="button" >Regresar al Panel del administrador</a>
            </div>
        </div>

        <%
            String nombre = "", estado = "";
            int codigo = 0, cantidad = 0;
            double valor = 0;
            InputStream imagen;
            Part part;
            ProductoEn productoEn;
            ProductoNg productoNg = new ProductoNg();
            Conexion con = new Conexion();
            if (request.getParameter("boton") != null) {
                if (request.getParameter("boton").equalsIgnoreCase("enviar")) {

                    codigo = Integer.parseInt(ProductoNg.IngresarCodigoProducto(con.getCon()));
                    nombre = request.getParameter("nombre");
                    estado = "disponible";
                    cantidad = Integer.parseInt(request.getParameter("cantidad"));
                    valor = Double.valueOf(request.getParameter("valor"));
                    part = request.getPart("imagen");
                    imagen = part.getInputStream();

                    productoEn = new ProductoEn(codigo, nombre, valor, cantidad, estado, imagen);
                    if (productoNg.guardarProducto(con.getCon(), productoEn)) {
                        response.sendRedirect("/ProyectoWEB/Dashboard-Admin.jsp");
                    } else {
                        response.sendRedirect("/ProyectoWEB/Ingreso-productos.jsp");
                    }
                }
            }
        %>

        <div class="container" id="tc">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form class="form-group" action="FileUploadServlet" method="post" enctype="multipart/form-data">
                                <div class="col-md-12">                
                                    <center>
                                        <div class="form-group">
                                            <label for="nombre">Nombre del plato:</label>
                                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese nombre..." required="true">
                                        </div>
                                        <div class="form-group">
                                            <label for="valor">Valor:</label>
                                            <input type="text" class="form-control" id="valor" name="valor" placeholder="Ingrese el valor..." required="true">
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="cantidad">Cantidad:</label>
                                                <input type="number" class="form-control" id="cantidad" name="cantidad" placeholder="Ingrese la cantidad disponible..." required="true">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="imagen">Imagen:</label>
                                                <input type="file" class="form-control" name="imagen" required="true">
                                            </div>
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
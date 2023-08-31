package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Restaurante.Utilidades.Conexion;
import Restaurante.Entidades.ProductoEn;
import Restaurante.Negocio.ProductoNg;
import java.util.List;

public final class Catalogo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    ");

        ProductoEn productoEn = new ProductoEn();
        ProductoNg productoNg = new ProductoNg();
        Conexion con = new Conexion();
    
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <title>Catálogo | Pacomeralgo</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\">      \n");
      out.write("        <link rel=\"icon\" href=\"Imagenes/chefLogo.ico\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-default navbar-static-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("                        <span class=\"sr-only\">Este botón despliega la barra de navegación a través del screen reader</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>                        \n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.jsp\" data-toggle=\"tooltip\" title=\"Dirige a el inicio de la página.\">Restaurante</a>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"Nosotros.jsp\" data-toggle=\"tooltip\" title=\"Dirige a la información general del restaurante.\">Descúbrenos</a></li>\n");
      out.write("                        <li><a href=\"Catalogo.jsp\" data-toggle=\"tooltip\" title=\"Dirige a el catálogo de productos.\">Catálogo</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"Contacto.jsp\" data-toggle=\"tooltip\" title=\"Dirige a la información para contacto.\">Contáctenos</a></li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\" data-toggle=\"tooltip\" title=\"Despliega menú tipo de perfiles.\">Iniciar Sesión</a>\n");
      out.write("                            <div style=\"background-color: #404E6B\" class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Login.jsp\" data-toggle=\"tooltip\" title=\"Dirige a el inicio de sesión para clientes.\">Inicio de Clientes</a><br>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Login.jsp\" data-toggle=\"tooltip\" title=\"Dirige a el inicio de sesión para empleados.\">Inicio personal del restaurante</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"Registro.jsp\" data-toggle=\"tooltip\" title=\"Dirige a el formulario de registro.\" >Regístrate</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid\" >\n");
      out.write("            <div class=\"jumbotron\" >\n");
      out.write("                <center><img class=\"card-img-top\" src=\"Imagenes/catalogo2.png\" style=\"width: 200px\" style=\"opacity: 20%\" alt=\"Imagen que ilustra un catalogo.\"></center>\n");
      out.write("                <h1>CATÁLOGO</h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                <!-- Indicators -->\n");
      out.write("                <ol class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                    <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("                </ol>\n");
      out.write("\n");
      out.write("                <!-- Wrapper for slides -->\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("\n");
      out.write("                    <div class=\"item active\">\n");
      out.write("                        <center><img src=\"Imagenes/lasagna.jpg\" alt=\"Imagen que ilustra el plato: Lasaña francesa.\" id=\"imagen\" ></center>\n");
      out.write("                        <div class=\"carousel-caption\">\n");
      out.write("                            <h3>Lasaña Francesa</h3>\n");
      out.write("                            <p>Uno de los mejores platos de la casa.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <center><img src=\"Imagenes/pollo.jpg\" alt=\"Imagen que ilustra el plato: Pollo con champiñones.\" id=\"imagen\" ></center>\n");
      out.write("                        <div class=\"carousel-caption\">\n");
      out.write("                            <h3>Pollo con champiñones</h3>\n");
      out.write("                            <p>Uno de los platos con mayor petición.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <center><img src=\"Imagenes/vegetales.jpg\" alt=\"Imagen que ilustra el plato: Ensalada de vegetales.\" id=\"imagen\" ></center>\n");
      out.write("                        <div class=\"carousel-caption\">\n");
      out.write("                            <h3>Ensalada de vegetales</h3>\n");
      out.write("                            <p>Lo más saludable que encontrarás. </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Left and right controls -->\n");
      out.write("                <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("                    <span class=\"sr-only\">Previous</span>\n");
      out.write("                </a>\n");
      out.write("                <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                    <span class=\"sr-only\">Next</span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            List<ProductoEn> lista = productoNg.MostarProductos(con.getCon());
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\" id=\"carta\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <form action=\"Controler\" method=\"post\">\n");
      out.write("                            <input type=\"submit\" name=\"accion\" value=\"lista\">\n");
      out.write("                        </form>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <c:forEach var=\"dato\" items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lista}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                <div class=\"col-md-4\">\n");
      out.write("                                    <div class=\"card\">\n");
      out.write("                                        <img src=\"ControlerIMG?codigo=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dato.getCodigo()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" width=\"250\" height=\"230 \">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <h4 class=\"card-title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dato.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\n");
      out.write("                                            <p class=\"card-text\">\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dato.getCantidad()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                                <br>\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dato.getValor()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </p>\n");
      out.write("                                            <a style=\"text-align: center;\" href=\"#\" class=\"btn btn-success\" data-toggle=\"tooltip\" title=\"Añade un pruducto a tu pedido.\">Añadir</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </c:forEach>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container-fluid\" id=\"pie\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <h1 style=\"text-align:center;\">Restaurante</h1>\n");
      out.write("                        <ul class=\"list-inline text-center\">\n");
      out.write("                            <li><a href=\"#\"><span class=\"glyphicon glyphicon-envelope\"></span></a></li>\n");
      out.write("                            <li><a href=\"#\"><span class=\"glyphicon glyphicon-thumbs-up\"></span></a></li>\n");
      out.write("                            <li><a href=\"#\"><span class=\"glyphicon glyphicon-phone-alt\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <p style=\"text-align:center;\">2019</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <ul class=\"list-inline text-center\">\n");
      out.write("                            <li><a href=\"index.jsp\">Inicio</a></li>\n");
      out.write("                            <li><a href=\"Terminos-Y-Condiciones.jsp\">Términos y condiciones</a></li>\n");
      out.write("                            <li><a href=\"Mapa-del-Sitio.jsp\">Mapa del Sitio</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

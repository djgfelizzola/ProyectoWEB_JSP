/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurante.Persistencia;

import Restaurante.Entidades.ProductoEn;
import Restaurante.Negocio.ProductoNg;
import Restaurante.Utilidades.Conexion;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author saty_
 */
public class FileUpdateServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String nombre = "", estado = "";
        int codigo = 0, cantidad = 0;
        double valor = 0;
        InputStream imagen;
        Part part;
        ProductoEn productoEn;
        ProductoNg productoNg = new ProductoNg();
        Conexion con = new Conexion();
        if (request.getParameter("botone") != null) {
            if (request.getParameter("botone").equalsIgnoreCase("enviar")) {

                codigo = Integer.parseInt(request.getParameter("codigo"));
                nombre = request.getParameter("nombre");
                estado = request.getParameter("estado");
                cantidad = Integer.parseInt(request.getParameter("cantidad"));
                valor = Double.valueOf(request.getParameter("valor"));
                part = request.getPart("imagen");
                imagen = part.getInputStream();

                productoEn = new ProductoEn(codigo, nombre, valor, cantidad, estado, imagen);
                if (productoNg.modificarProducto(con.getCon(), productoEn)) {
                    response.sendRedirect("/ProyectoWEB/Dashboard-Admin.jsp");
                } else {
                    response.sendRedirect("/ProyectoWEB/Modificar-Productos.jsp");
                }
            }
        }
    }
    private String getFileName(final Part part) {
    final String partHeader = part.getHeader("content-disposition");
    for (String content : part.getHeader("content-disposition").split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
        }
    }
    return null;
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

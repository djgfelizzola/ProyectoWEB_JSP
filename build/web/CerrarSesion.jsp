<%-- 
    Document   : CerrarSesion
    Created on : 17/11/2019, 3:08:01 p. m.
    Author     : djgfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<%
    session.invalidate();
    response.sendRedirect("/ProyectoWEB/Login.jsp");
    
%>

<%-- 
    Document   : ActualizacionDatos
    Created on : 18/11/2019, 5:13:19 p. m.
    Author     : djgfe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<html>
    <head>
    <script type="text/javascript">
        function preloadFunc()
        {
            alert("PreLoad");
        }
        window.onpaint = preloadFunc();
    </script>

</head>
</html>


<%response.sendRedirect("/ProyectoWEB/MisDatos.jsp");%>
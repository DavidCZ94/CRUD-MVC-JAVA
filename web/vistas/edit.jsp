<%-- 
    Document   : edit
    Created on : Jan 10, 2021, 10:36:23 PM
    Author     : David Alberto
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            PersonaDAO dao = new PersonaDAO();
            int id = Integer.parseInt((String)request.getAttribute("idPer"));
            Persona p = (Persona)dao.list(id);
        %>
        
        <h1>Modificar usuario</h1>
        <form action="Controlador">
            ID: <br>
            <input type="text" name="txtDni" value="<%= p.getDni()%>"><br>
            Nombres: <br>
            <input type="text" name="txtNom" value="<%= p.getNom()%>"><br>
            <input type="hidden" name="txtId" value="<%= p.getId()%>">
            <input type="submit" name="accion" value="Actualizar"><br>
            <a href="Controlador?accion=listar">Regresar</a>
        </form>
    </body>
</html>

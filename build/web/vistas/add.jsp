<%-- 
    Document   : add
    Created on : Jan 10, 2021, 10:36:01 PM
    Author     : David Alberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar usuario</h1>
        <form action="Controlador">
            ID: <br>
            <input type="text" name="txtDni"><br>
            Nombres: <br>
            <input type="tect" name="txtNom"><br>
            <input type="submit" name="accion" value="Agregar"><br>
        </form>
    </body>
</html>

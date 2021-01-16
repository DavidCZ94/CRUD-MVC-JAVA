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
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" type="image/png" href="assets/javaIcon.png"/>
        <title>JSP Page</title>
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.0.0/mdb.min.css" rel="stylesheet"/>
        <!-- Own css -->
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="text-center row align-items-center justify-content-center vh-100" id="bodyContainer">
        <div class="card w-75">
            <div class="card-body"> 
                <p class="card-text">
                <%
                    PersonaDAO dao = new PersonaDAO();
                    int id = Integer.parseInt((String)request.getAttribute("idPer"));
                    Persona p = (Persona)dao.list(id);
                %>
                
                <h1>Edit user</h1>
                <form action="Controller">
                    <!-- ID input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="form5Example1" class="form-control" name="txtDni" value="<%= p.getDni()%>" required/>
                        <label class="form-label" for="form5Example1">ID:</label>
                    </div>
                    <!-- Name input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="form5Example2" class="form-control"  name="txtNom" value="<%= p.getNom()%>" required/>
                        <label class="form-label" for="form5Example2">Name:</label>
                    </div>
                    <!-- Hidden input -->
                    <input type="hidden" name="txtId" value="<%= p.getId()%>">
                    <div class="d-grid gap-2">
                        <button class="btn btn-primary" type="submit" name="accion" value="Actualizar">Update</button>
                    </div>
                    <div class="d-grid gap-2">
                        <a class="btn btn-info" href="Controller?accion=listar">Back</a>
                    </div>
                </form>
                </p>
            </div>
        </div>
            
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.0.0/mdb.min.js"></script>
</html>

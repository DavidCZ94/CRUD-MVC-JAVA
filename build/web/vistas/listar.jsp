<%-- 
    Document   : listar
    Created on : Jan 10, 2021, 10:36:35 PM
    Author     : David Alberto
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <body class="text-center row align-items-center justify-content-center vh-100">
        <div class="card w-75">
            <div class="card-body"> 
                <p class="card-text">
                    <h1>Users</h1>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-dark table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">DNI</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <%
                                PersonaDAO dao = new PersonaDAO();
                                List<Persona>list = dao.listar();
                                Iterator<Persona>iter = list.iterator();
                                Persona per = null;
                                while ( iter.hasNext() ){
                                    per = iter.next();
                            %>
                            <tbody>
                                <tr>
                                    <td class="text-end h-100"><%= per.getId()%></td>
                                    <td><%= per.getDni()%></td>
                                    <td><%= per.getNom()%></td>
                                    <td>
                                        <a class="btn btn-info" href="Controller?accion=editar&id=<%= per.getId()%>">Edit</a>
                                        <a class="btn btn-danger" href="Controller?accion=eliminar&id=<%= per.getId()%>">Delete</a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <hr>
                    <a class="btn btn-primary" href="Controller?accion=add">Add new user</a>
                </p>
            </div>
                            
        </div>
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.0.0/mdb.min.js"></script>
</html>

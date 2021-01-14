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
                    <h1>Agregar usuario</h1>
                    <form action="Controlador">
                        <!-- ID input -->
                        <div class="form-outline mb-4">
                          <input type="text" id="form5Example1" class="form-control" name="txtDni"/>
                          <label class="form-label" for="form5Example1">ID:</label>
                        </div>
                        <!-- Name input -->
                        <div class="form-outline mb-4">
                          <input type="text" id="form5Example2" class="form-control"  name="txtNom"/>
                          <label class="form-label" for="form5Example2">Name:</label>
                        </div>
                        <div class="d-grid gap-2">
                            <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                        </div>
                  </form>
                </p>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.0.0/mdb.min.js"></script>
</html>

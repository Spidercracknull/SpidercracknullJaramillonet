<%-- 
    Document   : sesion
    Created on : 23 abr. 2023, 20:09:07
    Author     : cajaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Jaramillo.net</title>
        <link rel="icon" href="Imagenes/Icono.ico">
        <!-- Referencia a los archivos CSS de Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilosindex.css">
        <!-- Referencia a los archivos JS de Bootstrap -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn"></script>
    </head>

    <body>
        <header class="header">
            <h1 class="header-title"><button class="header-title-btn" onclick="location.href = 'index.jsp'">Jaramillo.net</button></h1>
            <button class="header-registrarse" onclick="location.href = 'registrarse.jsp'">Registrarse</button>
        </header>
        <div class="container">
            <br><br><br><br>
            <h1 class="text-center">Bienvenido a Jaramillo.net</h1>
            <form class="form" action="Login" method="post">
                <h1>Iniciar Sesión</h1>
                <div class="form-group">
                    <label for="correo">Correo Electrónico</label>
                    <input type="email" class="form-control" id="correo" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Por favor, ingresa una dirección de correo válida">
                </div>

                <div class="form-group">
                    <label for="contraseña">Contraseña</label>
                    <input type="password" class="form-control" id="contraseña" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Por favor, ingresa una contraseña de al menos 8 caracteres que contenga al menos una letra y un número" minlength="8" title="Por favor, ingresa una contraseña de al menos 8 caracteres" maxlength="8">
                </div>

                <br>
                <a href="comentarios.jsp"><button type="submit" class="btn btn-primary">Iniciar Sesión</button></a>

            </form>
        </div>
        <% String errorMessage = (String) request.getAttribute("errorMessage");
           if (errorMessage != null) { %>
        <script>alert('<%= errorMessage %>');</script>
        <% } %>
    </body>
</html>
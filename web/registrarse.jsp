<%-- 
    Document   : registrarse
    Created on : 23 abr. 2023, 20:09:20
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
        <div>
            <header class="header">
                <h1 class="header-title"><button class="header-title-btn"
                                                 onclick="location.href = 'index.jsp'">Jaramillo.net</button></h1>
                <button class="header-login" onclick="location.href = 'index.jsp'">Iniciar Sesión</button>
            </header>
        </div>
        <div class="mt-3">
            <h1 class="text-center">Bienvenido a Jaramillo.net</h1>
        </div>
        <div class="container">
            <br><br>

            <hr><br>


            <form class="form" onsubmit="return validarFormulario()" action="Controlador">

                <h1>Registrarse</h1>

                <div class="form-group">
                    <label for="nombre">Usuario</label>
                    <input type="text" class="form-control" name="nombre_usuario" id="nombre_usuario" required pattern="[A-Za-z]+" maxlength="20"
                           title="Por favor, ingresa solo letras en el nombre">
                </div>

                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" required pattern="[A-Za-z]+" maxlength="20"
                           title="Por favor, ingresa solo letras en el nombre">
                </div>

                <div class="form-group">
                    <label for="apellidos">Apellidos</label>
                    <input type="text" class="form-control" name="apellidos" id="apellidos" required pattern="[A-Za-z]+" maxlength="35"
                           title="Por favor, ingresa solo letras en los apellidos">
                </div>

                <div class="form-group">
                    <label for="correo">Correo Electrónico</label>
                    <input type="email" class="form-control" name="correo" id="correo" required
                           pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
                           title="Por favor, ingresa una dirección de correo válida">
                </div>

                <div class="form-group">
                    <label for="contraseña">Contraseña</label>
                    <input type="password" class="form-control" name="contraseña" id="contraseña" required
                           pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"
                           title="Por favor, ingresa una contraseña de al menos 8 caracteres que contenga al menos una letra y un número"
                           minlength="8" title="Por favor, ingresa una contraseña de al menos 8 caracteres" maxlength="8">
                </div>


                <br>
                <a href="#"><button type="submit" name="accion" class="btn btn-primary">Registrarse</button></a>
            </form>
        </div>
        <% String errorMessage = (String) request.getAttribute("mensaje_error");
           if (errorMessage != null) { %>
        <script>alert('<%= errorMessage %>');</script>
        <% } %>
    </body>
</html>

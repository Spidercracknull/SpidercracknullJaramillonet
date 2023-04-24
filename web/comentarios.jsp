<%-- 
    Document   : comentarios
    Created on : 23 abr. 2023, 20:09:35
    Author     : cajaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../Imagenes/Icono.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="CSS/estiloscomentarios.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <title>Jaramillo.net</title>
</head>

<body>
    <header class="header">
        <h1 class="header-title"><button class="header-title-btn" onclick="location.href='index.jsp'">Jaramillo.net</button></h1>
        <button class="header-logout"onclick="location.href='index.jsp'">Cerrar Sesión</button>
    </header>
    <br><br>
    <h2 class="text-center">Realizar Comentario</h2>
    <br>
    <form id="comentarioForm" class="form">
        <div class="form-group">
            <label for="usuarioComentario">Usuario a comentar</label>
            <input type="text" class="form-control" id="usuarioComentario" required pattern="[A-Za-z0-9]+" maxlength="35">
        </div>
        <div class="form-group">
            <label for="comentario">Comentario</label>
            <textarea class="form-control" id="comentario" rows="3" required maxlength="600"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Enviar Comentario</button>
    </form>
    
    <hr>
    
    <h2 class="text-center">Consultar Comentarios por Usuario</h2>
    <form id="consultarUsuarioForm" class="form">
        <div class="form-group">
            <label for="usuarioConsulta">Usuario a consultar</label>
            <input type="text" class="form-control" id="usuarioConsulta" required pattern="[A-Za-z0-9]+" maxlength="35">
        </div>
        <button type="submit" class="btn btn-primary">Consultar Comentarios</button>
    </form>
    
    <hr>
    
    <h2 class="text-center">Consultar Comentarios por Fecha</h2>
    <form id="consultarFechaForm" class="form">
        <div class="form-group">
            <label for="fechaConsulta">Fecha de consulta</label>
            <input type="date" class="form-control" id="fechaConsulta" required>
        </div>
        <button type="submit" class="btn btn-primary">Consultar Comentarios</button>
    </form>
    
    <hr>
    
    <h2 class="text-center">Editar Comentario</h2>
    <form id="editarForm" class="form">
        <div class="form-group">
            <label for="idComentario">ID del Comentario</label>
            <input type="text" class="form-control" id="idComentario" required pattern="[A-Za-z0-9]+">
        </div>
        <div class="form-group">
            <label for="nuevoComentario">Nuevo Comentario</label>
            <textarea class="form-control" id="nuevoComentario" rows="3" required maxlength="600"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Editar Comentario</button>
    </form>
    
    <hr>
    
    <h2 class="text-center">Eliminar Comentario</h2>
    <form id="eliminarForm" class="form">
        <div class="form-group">
            <label for="idComentarioEliminar">ID del Comentario a Eliminar</label>
            <input type="text" class="form-control" id="idComentarioEliminar" required pattern="[A-Za-z0-9]+">
        </div>
        <button type="submit" class="btn btn-danger">Eliminar Comentario</button>
    </form>
    
    <br><br>
    <hr>
    <footer class="footer">
        <div class="container">
            <div class="footer-info">
                <h2>Información del Programador/Contacto</h2>
                <p>Nombre: Santiago Jaimes Jaramillo</p>
                <p>Teléfono: 55 2673 1610</p>
                <p>Email: jaimes.jaramillo.santiago@gmail.com</p>
            </div>
            <div class="social-icons">
                <ul class="text-right">
                    <li><a href="https://www.facebook.com/spidercrack.null.7" target="_blank"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="https://twitter.com/SpidercrackNull" target="_blank"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="https://www.instagram.com/spidercracknull" target="_blank"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </div>
    </footer>
    <br><br>
</body>

</html>
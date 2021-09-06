<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Registro de Usuarios - Práctica 1</title>
    </head>
    <body>
        <section>
            <div class="contenedor-formulario">
                <h1 class="formulario-titulo">Registro de Usuarios</h1>
                <div class="formulario-logo"><img src="recursos/imagenes/grupo.png" alt=""></div>
                <form class="formulario fondo-naranja" method="post" action="procesaRegistroUsuario" enctype="application/x-www-form-urlencoded">
                    <div class="formulario-campos">
                        <label for="txtNombre">Nombre:</label>
                        <input type="text" name="txtNombre" id="txtNombre" required>
                        <br>
                        <label for="txtApellidos">Apellidos:</label>
                        <input type="text" name="txtApellidos" id="txtApellidos" required>
                        <br>
                        <label for="txtEmail">Correo Electrónico:</label>
                        <input type="email" name="txtEmail" id="txtEmail" required>
                        <br>
                        <label for="txtPassword">Contraseña:</label>
                        <input type="password" name="txtPassword" id="txtPassword" required>
                        <br>
                    </div>
                    <input class="boton" type="submit" value="Enviar">
                </form>
            </div>
        </section>
        <footer>
            © 2021 - Todos los derechos reservados
        </footer>
    </body>
</html>

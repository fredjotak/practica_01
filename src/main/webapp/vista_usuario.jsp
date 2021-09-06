<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Datos del Usuario - Práctica 1</title>
    </head>
    <body>
        <section>
            <jsp:useBean id="usuario" scope="request" class="com.emergentes.usuario.Usuario" />
            <h1 class="centro">Datos del Usuario</h1>
            <div class="contenedor-lista-img"><img src="recursos/imagenes/aprender-en-linea.png"></div>
            <div class="contenedor-lista">
                <div class="lista-detalle fondo-naranja">
                    <p><b>Nombre: </b> <jsp:getProperty name="usuario" property="nombre" /></p>
                    <p><b>Apellidos: </b> <jsp:getProperty name="usuario" property="apellidos" /></p>
                    <p><b>Correo Electrónico: </b> <jsp:getProperty name="usuario" property="correoElectronico" /></p>
                    <p><b>Contraseña: </b> <jsp:getProperty name="usuario" property="contrasenia" /></p>
                </div>
            </div>
            <br>
            <a href="./">Volver</a>
        </section>
        <footer>
            © 2021 - Todos los derechos reservados
        </footer>
    </body>
</html>

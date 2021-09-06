<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Datos del Curso - Práctica 1</title>
    </head>
    <body>
        <section>
            <jsp:useBean id="curso" scope="request" class="com.emergentes.curso.Curso" />
            <h1 class="centro">Datos del Curso</h1>
            <div class="contenedor-lista-img"><img src="recursos/imagenes/aprender-en-linea.png"></div>
            <div class="contenedor-lista">
                <div class="lista-detalle fondo-rojo">
                    <p><b>Nombre: </b> <jsp:getProperty name="curso" property="nombre" /></p>
                    <p><b>Apellidos: </b> <jsp:getProperty name="curso" property="apellidos" /></p>
                    <p><b>Curso: </b> <jsp:getProperty name="curso" property="curso" /></p>
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

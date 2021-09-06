<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Datos del Libro - Práctica 1</title>
    </head>
    <body>
        <section>
            <jsp:useBean id="libro" scope="request" class="com.emergentes.libro.Libro" />
            <h1 class="centro ancho__90">Datos del Libro</h1>
            <div class="contenedor-lista-img"><img src="recursos/imagenes/estante-para-libros.png"></div>
            <div class="contenedor-lista">
                <div class="lista-detalle fondo-celeste">
                    <p><b>Título :</b> <jsp:getProperty name="libro" property="titulo" /></p>
                    <p><b>Autor :</b> <jsp:getProperty name="libro" property="autor" /></p>
                    <p><b>Resumen :</b> <jsp:getProperty name="libro" property="resumen" /></p>
                    <p><b>Medio :</b> <jsp:getProperty name="libro" property="medio" /></p>
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

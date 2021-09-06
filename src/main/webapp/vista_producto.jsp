<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Datos del Producto - Práctica 1</title>
    </head>
    <body>
        <section>
            <jsp:useBean id="producto" scope="request" class="com.emergentes.producto.Producto" />
            <h1 class="centro ancho__90">Datos del Producto</h1>
            <div class="contenedor-lista-img"><img src="recursos/imagenes/caja.png"></div>
            <div class="contenedor-lista">
                <div class="lista-detalle fondo-azul">
                    <p><b>Producto: </b> <jsp:getProperty name="producto" property="nombre" /></p>
                    <p><b>Categoría: </b> <jsp:getProperty name="producto" property="categoria" /></p>
                    <p><b>Existencia: </b> <jsp:getProperty name="producto" property="existencia" /></p>
                    <p><b>Precio: </b> <jsp:getProperty name="producto" property="precio" /> Bs.</p>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Registro de Productos - Práctica 1</title>
    </head>
    <body>
        <section>
            <div class="contenedor-formulario">
                <h1 class="formulario-titulo">Registro de Productos</h1>
                <div class="formulario-logo"><img src="recursos/imagenes/caja.png" alt=""></div>
                <form class="formulario fondo-azul" method="post" action="procesaRegistroProducto" enctype="application/x-www-form-urlencoded">
                    <div class="formulario-campos">
                        <label for="txtProducto">Producto:</label>
                        <input type="text" name="txtProducto" id="txtProducto" required>
                        <br>
                        <label for="cbCategoria">Categoría:</label>
                        <select name="cbCategoria" id="cbCategoria">
                            <option value="Accesorio o Equipamientos">Accesorio o Equipamientos</option>
                            <option value="Componentes">Componentes</option>
                            <option value="Materiales Procesados">Materiales Procesados</option>
                            <option value="Materias Primas">Materias Primas</option>
                        </select>
                        <br>
                        <label for="txtExistencia">Existencia:</label>
                        <input type="text" name="txtExistencia" id="txtExistencia" required>
                        <br>
                        <label for="nroPrecio">Precio:</label>
                        <input type="number" name="nroPrecio" id="nroPrecio" required min="0" step=".1">
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Registro de Libros - Práctica 1</title>
    </head>
    <body>
        <section>
            <div class="contenedor-formulario">
                <h1 class="formulario-titulo">Registro de Libros</h1>
                <div class="formulario-logo"><img src="recursos/imagenes/estante-para-libros.png" alt=""></div>
                <form class="formulario fondo-celeste" method="post" action="procesaRegistroLibro" enctype="application/x-www-form-urlencoded">
                    <div class="formulario-campos">
                        <label for="txtTitulo">Titulo</label>
                        <input type="text" name="txtTitulo" id="txtTitulo" required>
                        <br>
                        <label for="txtAutor">Autor:</label>
                        <input type="text" name="txtAutor" id="txtAutor" required>
                        <br>
                        <label for="txtResumen">Resumen:</label>
                        <textarea name="txtResumen" id="txtResumen" rows="5" required></textarea>
                        <br>
                        <label for="rdMedio">Medio:</label>
                        <div class="formulario-campos-radio">
                            <input type="radio" name="rdMedio" id="rdMedio" value="físico"> Físico <br>
                            <input type="radio" name="rdMedio" id="rdMedio" value="magnético"> Magnético
                        </div>
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

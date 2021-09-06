<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styleGlobal.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Inscripción en Curso - Práctica 1</title>
    </head>
    <body>
        <section>
            <div class="contenedor-formulario">
                <h1 class="formulario-titulo">Inscripción en Curso</h1>
                <div class="formulario-logo"><img src="recursos/imagenes/aprender-en-linea.png" alt=""></div>
                <form class="formulario fondo-rojo" method="post" action="procesaInscripcionCurso" enctype="application/x-www-form-urlencoded">
                    <div class="formulario-campos">
                        <label for="txtNombre">Nombre:</label>
                        <input type="text" name="txtNombre" id="txtNombre" required>
                        <br>
                        <label for="txtApellidos">Apellidos:</label>
                        <input type="text" name="txtApellidos" id="txtApellidos" required>
                        <br>
                        <label for="cbCurso">Curso:</label>
                        <select name="cbCurso" id="cdCurso">
                            <option value="HTML desde cero">HTML desde cero</option>
                            <option value="Curso de Git Básico">Curso de Git Básico</option>
                            <option value="Curso de SQL">Curso de SQL</option>
                        </select>
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

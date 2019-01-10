<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejemplo01 - 20190106</title>
    <style>
        .container {
            width: 50%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container">
    <h1>Formulario GET</h1>
    <p>* Introduzca sus datos</p>
    <form name="formulario" method="GET" action="ejemplo01-formulario.php">
        <label for="nombre">Nombres:</label><br>
        <input type="text" id="nombre" name="nombre"><br>
        <label for="apellido">Apellidos:</label><br>
        <input type="text" id="apellido" name="apellido"><br>
        <label for="correo">Email:</label><br>
        <input type="email" id="correo" name="correo"><br>
        <label for="estado">Estado:</label><br>
        <select name="estado" id="estado">
            <option value="soltero">soltero</option>
            <option value="casado">casado</option>
            <option value="viudo">viudo</option>
        </select><br>
        <label for="hijos">Número de hijos:</label><br>
        <input type="radio" id="hijos" name="hijos" value="0" checked> 0
        <input type="radio" id="hijos" name="hijos" value="1"> 1
        <input type="radio" id="hijos" name="hijos" value="2"> 2
        <input type="radio" id="hijos" name="hijos" value="3"> 3<br>
        <label for="">Gustos:</label><br>
        <input type="checkbox" name="gustos[]" value="programar">Programar
        <input type="checkbox" name="gustos[]" value="musica">Musica
        <input type="checkbox" name="gustos[]" value="cine">Cine
        <input type="checkbox" name="gustos[]" value="deporte">Deporte
        <input type="checkbox" name="gustos[]" value="cocina">Cocina<br><br>
        <input type="submit" name="Submit" value="Enviar">
    </form>
    </div>
</body>
</html>
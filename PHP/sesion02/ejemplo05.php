<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FORMULARIOS</title>
    <style>
        h1 {
            text-align: center;
        }
        table {
            margin: 0 auto;
            width: 50%;
            border: 1px solid skyblue;
            border-collapse: collapse;
        }
        form {
            width: 50%;
            margin: 0 auto;
        }
        label,
        input {
            display: block;
            width: 100%;
        }
        input[type="submit"] {
            background-color: skyblue;
        }
    </style>
</head>
<body>
    <h1>Formulario</h1>
    <form action="" method="post" name="">
        <label for="">Nombre</label>
        <input type="text">
        <label for="">Apellido</label>
        <input type="text">
        <label for="">Correo</label>
        <input type="email">
        <label for="">Estado Civil</label>
        <select name="" id="">
            <option value="soltero">Soltero</option>
            <option value="casado">Casado</option>
            <option value="viudo">Viudo</option>
        </select>
        <input type="submit" name="Submit" value="Enviar">
    </form>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .form-login {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .table-list {
            width: 100%;
            max-width: 1100px;
            margin: 0 auto;
        }
        form {
            padding:40px;
            border-radius: 4px;
        }
        table, td, th {
            border: 1px solid skyblue;
            border-collapse: collapse;
            text-align: center;
        }
        th {
            background-color: #efefef;
        }
    </style>
</head>
<body>
    <form action="">
        <table>
            <tr>
                <td>idProducto a modificar</td>
                <td><input type="text" name="idProducto"></td>
                
            </tr>
            <tr>
                <td>nuevo nombre producto</td>
                <td><input type="text" ></td>
            </tr>
            <tr >
                <td colspan="2"><input type="submit" name="modificar" value="modificar"></td>
            </tr>
        </table>
    </form>
<?php
    $servidor = "localhost";
    $usuario = "root";
    $contrasenia = "root";
    $basedatos = "clasephp";

    $mysqli = new mysqli($servidor,$usuario,$contrasenia,$basedatos);
    if(mysqli_connect_errno()){
        echo "error de conexion".mysqli_connect_error();
        exit();
    }

    $sql = "SELECT * FROM productos";

    $resultado = $mysqli->query($sql) or die($mysqli->error. "en la linea".(__LINE__-1));

    $numeroregistros = $resultado->num_rows;

    echo "<p>El numero de registros de usuarios es: <p>".$numeroregistros;

    echo "<div class='content-table'><table class='table-list'><tr><th>idProducto</th><th>Nombre Producto</th><th>Proveedor</th><th>Categoría</th><th>Cantidad Producto</th><th>Precio Unidad</th><th>Unidad Existente</th></tr>";
    while($numeroregistros = $resultado->fetch_assoc()){
        echo "<tr>";
        foreach ($numeroregistros as $key => $value) {
            echo "<td>". $value."</td>";
        }
        echo "<tr>";
    }
    echo "</table><div>";

    // free() con esta funcion limpias la memoria(buena practica)
    $resultado->free();


    //cierrer de conexion a mi base de datos
    // $mysqli->close();
?>
</body>
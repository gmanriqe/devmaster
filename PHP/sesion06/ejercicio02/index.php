<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .form-product {
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        form {
            background-color: #EFEFEF;
            padding:40px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
   <div class="form-product">
    <h2>Formulario Productos</h2>
    <form action="conexion.php" method="POST">
    <table>
        <tr>
            <td>idProducto</td>
            <td><input type="text" name="idProducto"></td>
        </tr>
        <tr>
            <td>Nombre Producto</td>
            <td><input type="text" name="nombreProducto"></td>
        </tr>
        <tr>
            <td>Proveedor</td>
            <td><input type="text" name="nombreProveedor"></td>
        </tr>
        <tr>
            <td>Categoría</td>
            <td><input type="text" name="categoria"></td>
        </tr>
        <tr>
            <td>Cantidad por Unidad</td>
            <td><input type="text" name="cantUnidad"></td>
        </tr>
        <tr>
            <td>Precio Unidad</td>
            <td><input type="text" name="precio"></td>
        </tr>
        <tr>
            <td>Unidades Existentes</td>
            <td><input type="text" name="uniExistente"></td>
        </tr>
        <tr>   
            <td colspan="2" style="text-align:center"> <input type="submit" value="Guardar"></td>
        </tr>
    </table>
    </form>
   </div>
</body>
</html>
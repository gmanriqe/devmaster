<?php 
    require "db/db.php";
    $result = get_list_product("SELECT * FROM productos");
    // var_dump($result);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product | Sitio Web</title>
    <!-- Bootstrap CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/base.css">
</head>
<body>
    <!-- tarea, listar productos +10p -->
    <div class="container">
        <table class="table">
            <thead>
                <tr class="active">
                    <th>IdProducto</th>
                    <th>NombreProducto</th>
                    <th>Proveedor</th>
                    <th>Categoría</th>
                    <th>CantidadPorUnidad</th>
                    <th>PrecioUnidad</th>
                    <th>UnidadesEnExistencia</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($result as $key => $value) { ?>
                    <tr>
                    <?php foreach($value as $key => $val) {?>
                        <td><?php echo $val ?></td>
                    <?php } ?>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
</body>
</html>
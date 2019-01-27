<html>
    <head>
        <style>
            table, td {
                border: 1px solid skyblue;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
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
        
            $id_producto = $_POST['idProducto'];
            $nombre_producto = $_POST['nombreProducto'];
            $nombre_proveedor = $_POST['nombreProveedor'];
            $categoria = $_POST['categoria'];
            $cantidad_unidad = $_POST['cantUnidad'];
            $precio = $_POST['precio'];
            $unidad_existente = $_POST['uniExistente'];

            // echo $id."<br>";
            // echo $id_producto."<br>";
            // echo $nombre_producto."<br>";
            // echo $nombre_proveedor."<br>";
            // echo $categoria."<br>";
            // echo $cantidad_unidad."<br>";
            // echo $precio."<br>";
            // echo $unidad_existente."<br>";

            $sql = "INSERT INTO productos(iIdProducto,vNombreProducto,vProveedor,vCategoría,CantidadPorUnidad,PrecioUnidad,UnidadesEnExistencia) VALUES ($id_producto,'$nombre_producto','$nombre_proveedor','$categoria','$cantidad_unidad',$precio,$unidad_existente)";
            
            //el valor de $resultado si se inserto correctamente devolverá true y si hubo un problema, retornará false
            $resultado = $mysqli->query($sql) or die($mysqli->error. "en la linea".(__LINE__-1));

            if($resultado){
                echo "se inserto correctamente";
            }else {
                echo "problemas con la inserción";
            }

            $resultado->free();
        ;?>
    </body>
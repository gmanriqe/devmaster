<?php

    include ('db/db.php');
    if(isset($_GET['id'])) {
        $id = $_GET['id'];
        $query = "SELECT * FROM productos WHERE iIdProducto=$id";
        $resultado = mysqli_query($conn,$query);

        // verificando si trae registros la query
        if(mysqli_num_rows($resultado) == 1){
            $row = mysqli_fetch_array($resultado);
            $id_producto = $row['iIdProducto'];
            $producto = $row['vNombreProducto'];
            $proveedor = $row['vProveedor'];
            $categoria = $row['vCategoría'];
            $precio_unidad = $row['PrecioUnidad'];
            $unidad_existente = $row['UnidadesEnExistencia'];
        }
    }

    // recorrer un arreglo
    // foreach($_POST as $key => $value) {
    //     echo $value;
    //     echo $key;
    // }
    
    // Esto si funciona
    echo hola;
    echo $_POST['idProducto'];
    if(isset($_POST['idProducto'])) {

       $id_producto = $_POST['idProducto'];
       $nombre_producto = $_POST['nombreProducto'];
       $nombre_proveedor = $_POST['nombreProveedor'];
       $nombre_categoria = $_POST['nombreCategoria'];
       $precio_unidad = $_POST['precioUnidad'];
       $unidad_existente = $_POST['unidadExistente'];

       $query_update = "UPDATE productos SET vNombreProducto='$nombre_producto', vProveedor='$nombre_proveedor', vCategoría='$nombre_categoria', PrecioUnidad=$precio_unidad, UnidadesEnExistencia=$unidad_existente WHERE iIdProducto=$id_producto";

       echo $query_update;
       mysqli_query($conn,$query_update);

       $_SESSION['message']='Se actualizo correctamente.';
       $_SESSION['message_type']='success';
       header('location: index.php');
    }
?>
<?php include ('includes/header.php') ;?>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header">
                    <h2>Edit Form</h2>
                </div>
                <div class="card-body">
                    <form action="edit_prod.php" method="POST">
                        <div class="form-group">
                             <input type="text" class="form-control" name="idProducto" value="<?php echo $id_producto;?>" placeholder="Nombre Producto">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="nombreProducto" value="<?php echo $producto;?>" placeholder="Nombre Producto">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="nombreProveedor" value="<?php echo $proveedor;?>" placeholder="Nombre Proveedor">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="nombreCategoria" value="<?php echo $categoria;?>" placeholder="Categoría">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="precioUnidad" value="<?php echo $precio_unidad;?>" placeholder="Precio Unidad">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="unidadExistente" value="<?php echo $unidad_existente;?>" placeholder="Unidad Existente">
                        </div>
                        <input type="submit" class="btn btn-success" name="edit" value="Editar"> 
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include ('db/db.php') ?>
<?php 
    // foreach ($_POST as $key => $value) {
    //     echo $value;
    // }
    if(isset($_POST['insert'])){
        echo $_POST['insert'];
        $producto = $_POST['nombreProducto'];
        $proveedor = $_POST['nombreProveedor'];
        $categoria = $_POST['nombreCategoria'];
        $cantidad_unidad = $_POST['cantidadUnidad'];
        $precio_unidad = $_POST['precioUnidad'];
        $unidad_existente = $_POST['unidadExistente'];

        // echo $producto;
        // echo $proveedor;
        // echo $categoria;
        // echo $cantidad_unidad;
        // echo $precio_unidad;
        // echo $unidad_existente;

        $query_insert = "INSERT INTO productos (vNombreProducto, vProveedor, vCategoría, CantidadPorUnidad, PrecioUnidad, UnidadesEnExistencia) VALUES ('$producto','$proveedor','$categoria','$cantidad_unidad',$precio_unidad,$unidad_existente)";

        mysqli_query($conn,$query_insert);
        $_SESSION['message']='Se ingreso el producto correctamente.';
        $_SESSION['message_type']='success';
        header('location: index.php');
    }
?>
<!-- practica calificada -->
<?php include ('includes/header.php')?>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header">
                    <h3>Ingrese Producto</h3>
                </div>
                <div class="card-body">
                    <form action="insert_prod.php" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control" name="nombreProducto" placeholder="Nombre Producto">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="nombreProveedor" placeholder="Nombre Proveedor">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="nombreCategoria" placeholder="Nombre Categoría">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="cantidadUnidad" placeholder="Cantidad Unidad">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="precioUnidad" placeholder="Precio Unidad">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="unidadExistente" placeholder="Unidad Existente">
                        </div>
                        <input type="submit" class="btn btn-success" name="insert" value="INSERTAR">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include ('includes/footer.php')?>
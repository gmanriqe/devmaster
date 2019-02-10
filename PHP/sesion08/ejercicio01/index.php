<?php include ('db/db.php');?>
<?php include ('includes/header.php');?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th>Id</th>
                            <th>Producto</th>
                            <th>Proveedor</th>
                            <th>Categoria</th>
                            <!-- <th>Cant. por Unidad</th> -->
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $query = "SELECT * FROM productos";
                            $resultado = mysqli_query($conn, $query);
                            // mysqli_fetch_assoc trae todas las variables incluyendo su index
                            while ($row = mysqli_fetch_assoc($resultado)){
                        ?>  
                            <tr>
                                <td><?php echo $row['iIdProducto'];?></td>
                                <td><?php echo $row['vNombreProducto'];?></td>
                                <td><?php echo $row['vProveedor'];?></td>
                                <td><?php echo $row['vCategoría'];?></td>
                                <!-- <td><?php //echo $row['CantidadPorUnidad'];?></td> -->
                                <td><?php echo $row['PrecioUnidad'];?></td>
                                <td><?php echo $row['UnidadesEnExistencia'];?></td>
                                <td class="container-btn">
                                    <a href="edit_prod.php?id=<?php echo $row['iIdProducto'];?>" class="btn btn-warning">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a class="btn btn-danger">
                                        <i class="fas fa-trash-alt"></i>
                                    </a>
                                </td>
                            </tr>
                        <?php 
                            }
                        ;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php include ('includes/footer.php');?>
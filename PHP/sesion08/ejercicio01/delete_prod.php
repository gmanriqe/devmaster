<?php 
include ('db/db.php');

if(isset($_GET['id'])){
    $id = $_GET['id'];

    $query_delete = "DELETE FROM productos WHERE iIdProducto=$id";
    $resultado = mysqli_query($conn,$query_delete);

    if(!$resultado){
        die("Query mall!");
    }
    $_SESSION['message'] = 'Se elimino correctamente';
    $_SESSION['message_type'] = 'danger';

    header('location: index.php');
}
?>


<?php include ('includes/footer.php'); ?>
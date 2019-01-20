<!-- ="("&A2&",'"&B2&"','"&C2&"','"&D2&"','"&E2&"',"&F2&","&G2&")," -->
<?php

$servername = "localhost";
$username="root";
$password="root";
$dbname = "clasephp";

// mysqli tiene dos parametros: nombre del servidor y que base de datos te conectaras
$conn = new mysqli($servername ,$username, $password, $dbname);
if($conn->connect_error){
    die("Coneccion Fallida". $conn->connect_error);
}

// sentencia sql
$sql = 'SELECT * FROM productos';

// 50 es en segundos y es el tiempo de reposo que tendrá la pagina
// if m_verifyconnection($conn,50){

// }
?>
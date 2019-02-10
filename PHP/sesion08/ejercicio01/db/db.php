<?php
         // activando la session
         session_start();

        $servidor = "localhost";
        $usuario = "root";
        $contrasenia = "root";
        $basedatos = "clasephp"; // esta base de datos, en mi caso la tengo como clasephp
   
        $conn = new mysqli($servidor, $usuario, $contrasenia, $basedatos) or die (mysqli_erro($mysqli));
?>
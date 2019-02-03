<?php 
    // con esto llamamos a nuestra conexion que esta en un archivo aparte
    require "db/db.php";

    $dni = $_POST['dni'];
    $password = $_POST['password'];

    // echo "SELECT * FROM usuarios WHERE dni='$dni' AND password='$password'";
    // validando que existan las variables y validando campos que traigan data
    if(isset($dni, $password) && !empty($dni) && !empty($password)){
        $res = get_usuario("SELECT * FROM usuarios WHERE dni='$dni' AND password='$password'");
    }

    // evaluando que res no este vacio (casos: consulta sql mal hecha/no hay registros en la tabla)
    if(!empty($res)){
        echo "Bienvenido";
    }else {
        // nouser=1 cuando tenemos problemas de autenticación
        header("location: login.php?nouser=1");
    }
?>
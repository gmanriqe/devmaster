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
    $user = $_POST['user'];
    $sql = "SELECT * FROM usuarios WHERE dni='$user'";
    // $resultado obtendra la data traida de sql, y es un ARRAY DE BASE
    // or die() para manejar los error
    $resultado = $mysqli->query($sql) or die($mysqli->error. "en la linea".(__LINE__-1));
    // num_rows es el numero de registros
    $numeroregistros = $resultado->num_rows;

    // $_REQUEST[''] traes el valor de una name en un formulario. es una variable global 

    echo "<p>El numero de registros de usuarios es: <p>".$numeroregistros;

    // en el mysql existen tres formas de leer la data traida de la base de datos: 
    //     fetch_array() trae como un array. visible para cualquier navegador
    //     fetch_all() trae como un array incluido el tipo de dato
    //     fetch_assoc() trae como una clase, con su get su set y oculto para cualquier navegador
    echo "<table ><tr><td>dni</td><td>contraseña</td><td>nombre</td></tr>";
    while($numeroregistros = $resultado->fetch_assoc()){
        echo "<tr>";
        foreach ($numeroregistros as $key => $value) {
            echo "<td>". $value."</td>";
        }
        echo "<tr>";
    }
    echo "</table>";

    // free() con esta funcion limpias la memoria(buena practica)
    $resultado->free();


    //cierrer de conexion a mi base de datos
    // $mysqli->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 02 - Array Multidimensional</title>
    <style>
        body {
            font-family: "Arial";
        }
        h1 {
            text-align: center;
            color: skyblue;
        }
        h3 {
            color: 
        }
    </style>
</head>
<body>
    <h1>Ejercicio 02</h3>
    <?php
    // En un arreglo para dejar la posicion e inicializarla vacia, es con "" ya sea numero o string
        $arreglo = array(
            array("11111111","Alexander","Cruz",1988,"","Jesus Maria","Soltero"),
            array("22222222","Jairo","Montero",2004,"","Lince","Casado"),
            array("33333333","Adrian","Alarcon",2000,"","Lince","Soltero"),
            array("44444444","Frans","Montes",1999,"","SJL","Soltero"),
            array("55555555","Mercedes","Mendoza",1986,"","SJL","Casado"),
            array("66666666","Antony","Garcia",2006,"","Brenia","Viudo"),
            array("77777777","Genesis","Paredes",1989,"","Jesus Maria","Divorciado"),
            array("88888888","Bryan","Lopez",1980,"","Brenia","Divorciado"),
            array("99999999","Francisco","Barrema",1970,"","Jesus Maria","Soltero"),
        );
        echo "<h3>Mostrando Nombre y Apellido en Formato Oración</h3>";
        for ($i=0; $i < count($arreglo); $i++) { 
            
            echo $arreglo[$i][1].", ";
            echo strtolower($arreglo[$i][2]).".<br>";
        }

        echo "<h3>Cuantas vocales tiene Nombre y Apellido</h3>";
        for ($i=0; $i < count($arreglo); $i++) { 
            $tamanio_string = strlen($arreglo[$i][1]);
            for ($in =0; $in < $tamanio_string; $in++) { 
                if($arreglo[$i][1]{$in} === "a" || $arreglo[$i][1]{$in} === "e" || $arreglo[$i][1]{$in} === "i" || $arreglo[$i][1]{$in} === "o" || $arreglo[$i][1]{$in} === "u"){
                    //Aqui falto logica de las vocales;
                }
            }        
        } 

        echo "<h3>Actualizando Edad</h3>";
        $anio_actual = date("Y");
        for ($i=0; $i < count($arreglo); $i++) { 
            $edad = $anio_actual - $arreglo[$i][3];
            $arreglo[$i][4] = $edad;
            echo $arreglo[$i][1] ." ".$arreglo[$i][4]. "<br>";
        }

        echo "<h3>Distrito y Cantidad</h3>";
        $distrito_lince = 0;
        $distrito_jm = 0;
        $distrito_sjl = 0;
        $distrito_brenia = 0;
        for ($i=0; $i < count($arreglo); $i++) { 
            $estado_distrito = $arreglo[$i][5];
            if($estado_distrito === "Lince") {
                $distrito_lince++;
            }
            if($estado_distrito === "Jesus Maria") {
                $distrito_jm++;
            }
            if($estado_distrito === "SJL") {
                $distrito_sjl++;
            }
            if($estado_distrito === "Brenia") {
                $distrito_brenia++;
            }
        }
        echo "Distrito de Lince: ".$distrito_lince."<br>";
        echo "Distrito de Jesús María: ".$distrito_jm."<br>";
        echo "Distrito de San Juan de Lurigancho: ".$distrito_sjl."<br>";
        echo "Distrito de Breña: ".$distrito_brenia;
;?>
<h1>Ejercicio 03</h3>
<?php
    echo "<h3>Menores de Edad</h3>";
    $cont_array = count($arreglo);
    $anio_actual = date("Y");
    for ($i=0; $i < $cont_array; $i++) { 
        $age = ($anio_actual - $arreglo[$i][3])."<br>";
        if($age < 18) {
            echo $arreglo[$i][1]." ";
        }
    }

    echo "<h3>Mayores de Edad</h3>";
    for ($i=0; $i < $cont_array; $i++) { 
        $age = ($anio_actual - $arreglo[$i][3])."<br>";
        if($age >= 18) {
            echo $arreglo[$i][1]." ";
        }
    }

    echo "<h3>Mayores de 20</h3>";
    for ($i=0; $i < $cont_array; $i++) { 
        $age = ($anio_actual - $arreglo[$i][3])."<br>";
        if($age > 20) {
            echo $arreglo[$i][1]." ";
        }
    }

    echo "<h3>Mayores de 30</h3>";
    for ($i=0; $i < $cont_array; $i++) { 
        $age = ($anio_actual - $arreglo[$i][3])."<br>";
        if($age > 30) {
            echo $arreglo[$i][1]." ";
        }
    }

    echo "<h3>Cantidad de Estado Civil</h3>";
    $contador_soltero = 0;
    $contador_casado = 0;
    $contador_viudo = 0;
    $contador_divorciado = 0;
    for ($i=0; $i < $cont_array; $i++) { 
        $estado_civil = $arreglo[$i][6];
        echo $estado_civil;
        if($estado_civil === "Soltero") {
            $contador_soltero++;
        }
        if($estado_civil === "Casado") {
            $contador_casado++;
        }
        if($estado_civil === "Viudo") {
            $contador_viudo++;
        }
        if($estado_civil === "Divorciado") {
            $contador_divorciado++;
        }
    }
    echo "Cantidad de Solteros: ".$contador_soltero."<br>";
    echo "Cantidad de Casados: ".$contador_casado."<br>";
    echo "Cantidad de Viudos: ".$contador_viudo."<br>";
    echo "Cantidad de Divorciados: ".$contador_divorciado;
;?>
</body>
</html>
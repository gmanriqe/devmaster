<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Embebido en Html</title>
    <style>
        table {
            width: 100%;
            border-color: skyblue;
            border-collapse: collapse;
            border: 1px solid skyblue;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Embedido en Html</h1>
    <h3>Array Dimensionales</h3>
    <?php 

    $dias_semana = array("lunes",
    "marter",
    "miercoles",
    "jueves",
    "viernes",
    "sabado",
    "domingo");

    echo "<h1> Dias de la Semana </h1>";
    echo "<table border='1'>";
        for ($i=0; $i < 6; $i++) { 
           echo "<tr><td>".$dias_semana[$i] ."</tr></td>";
        }
    echo "</table>";
    ;?>

    <h3>Array Multidimensionales</h3>
   <?php
        $personas = array(
            array("71998055","jesus"),
            array("98765432","maria"),
            array("12345678","miguel"),
            array("98786765","rosa"),
            array("46778888","mathieu")
        );
        $dni = "46778888";
        for ($fila = 0; $fila  < count($personas) ; $fila ++) { 
            //$personas[$fila][0] le colocas [0] por ser la posicion en la que va comparar
            if($personas[$fila][0] == $dni) {
                echo $personas[$fila][1];
            }
        }
   ;?>

<h3>Array Multidimensionales - FERRETERIA</h3>
   <?php
        

        function her($parametro){
            $tool = array(
                array("A001","cemento",20, 100),
                array("A002","clavos",5,50),
                array("A003","tornillo",6,20),
                array("A004","guincha",10,70),
                array("A005","martillo",15,200),
                array("A006","desarmador",10,300),
                array("A007","alicate",20,10),
                array("A008","pintura",40,100),
                array("A009","alambre",12,5),
                array("A010","ladrillos",3.5,1000),
            );


            for ($fila = 0; $fila  < count($tool) ; $fila ++) { 
               
                if ($tool[$fila][0] == $parametro){
                    echo "<table border='1' align='center'><tr><td>Producto</td><td>Price IGV</td><td>Stock</td>";
                    echo "<tr>";
                        $price = $tool[$fila][2]- ($tool[$fila][2]*0.18);
                        echo "<td>";
                        echo $tool[$fila][1];
                        echo "</td>";
                        echo "<td>";
                        echo $price;
                        echo "</td>";
                        echo "<td>";
                        echo $tool[$fila][3];
                        echo "</td>";
                    echo "</tr>";
                    echo "</table>";
                }
            }
        }

        her("A002");
    
   ;?>

<h3>PROPIEDAD DE UN ARRAY: IN_ARRAY</h3>
<p style="display:none">SI EXISTE EL ELEMENTO EN EL ARREGLO</p>
<?php
    $array = array("rojo","verde","azul","negro");
    if(in_array("rojo",$array)){
        echo "se encontro el elemento del array";
    }
;?>
<h3>PROPIEDADES DE UN ARRAY: UNSET</h3>
<!-- recuerda que aqui es preferible pasar el valor al final del arreglo para luego eliminarlo -->
<p style="display:none">Destruye elemento del array</p>
<?php
    $array = array("rojo","verde","azul","negro");
    if(in_array("rojo",$array)){
        echo "se encontro el elemento del array <br>";
    }
    unset($array[3]);
    
    for ($i=0; $i < count($array); $i++) { 
        echo $array[$i]."<br>";
    }
;?>

<h3>HACIENDO USO DEL FOREACH</h3>
<?php
    $array = array("rojo","verde","azul","negro");
    foreach ($array as $value) {
        echo "El valor es $value <br>";
    }
    echo "<br>";
    echo "<br>";
    foreach ($array as $key => $value) {
        echo "El valor es $value <br>";
        echo "Y el indice es $key <br>";
    }
;?>

<h3>Agregando elemento al array con: array_push</h3>
<?php
    $array = array("rojo","verde","azul","negro");
    array_push($array, "morado");
    array_push($array, "gris");
    foreach ($array as $key => $value) {
        echo "El valor es $value <br>";
        echo "Y el indice es $key <br>";
    }
;?>
    
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Expresiones Regulares</h1>
    <!-- [a-z] representa a las mayusculas y minusculas
    $mail = "nombre_correo@@contact.com";
    tener en cuenta los + -->

    <h3>Validación de Correo</h3>
    <?php
        $mail = "gmanriqe@devmaster.com";
        $mail2 = "mmanriq3@mmanriq3@mmanriq3.com";

        if(preg_match("/([a-z._])@([a-z.])+\.(com|org|net)+$/", $mail2)){
            echo "El correo ingresado es correcto ";
        }else {
            echo "El correo ingresado no es correcto ";
        }
    ;?>

    <h3>Arreglos Unidimensionales & Multidimensionales(tabla)</h3>
    <?php
       $miarray[1] = "hola";
       $miarray[2] = 3;
       $miarray["ejemplo"] = "Esta es la declaracion de otro array";
    
       $array = array(1,2,3,4,5,6,7,8,9,10);
       
       $array[] = 1;
       $array[] = 2;
       $array[] = 3;

       var_dump($array)."</br>";
    //    var_dump($miarray)."</br>";
    ;?>

<h3>PRIMERA FORMA FIBONACCI</h3>
    <?php 

        function fibonacci($params) {
            if($params == 0 || $params == 1){
                return $params;
            }else {
                $resultado = fibonacci($params-1) + fibonacci($params-2);
                return $resultado;
            }
        };

        function imprimir($num){
            echo "<table border='1'>";
            for ($i=0; $i < $num; $i++) { 
                $res = fibonacci($i);
                // echo $res." ";
                echo "<tr><td>".$res ."</tr></td>";
            }
            echo "</table>";
        }
        echo imprimir(10);        
    ;?>
    <h3>SEGUNDA FORMA FIBONACCI</h3>
    <?
        $array = array();

        for ($i=0; $i < 10; $i++) { 
            if($i == 0 || $i == 1){
                $array[$i] = $i;
                echo $array[$i]." ";
            }else {
                $array[$i] = $array[$i-1] + $array[$i-2];
                echo $array[$i]." ";
            }
        }
    ;?>

</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Mostrando: Suma, Resta y Promedio</h1>
    <?php

        $number1 = $_POST['number_1'];
        $number2 = $_POST['number_2'];
        $number3 =$_POST['number_3'];

        function suma($number1, $number2, $number3){
            $result = $number1 + $number2 + $number3;
            echo "Resultado de la Suma: ".$result."<br>";
            return $result;
        }

        function resta($number1, $number3){
            $result2 = $number1 - $number3;
            echo "Resultado de la Resta: ".$result2."<br>";
            return $result2;
        }

        function promedio($number1, $number2, $number3){
            $result3 = ($number1 + $number2 + $number3)/3;
            echo "Resultado del Promedio: ".$result3."<br>";
            return $result3;
        }
        
        suma($number1,$number2,$number3);
        resta($number1,$number3);
        promedio($number1,$number2,$number3);
    ;?>
</body>
</html>
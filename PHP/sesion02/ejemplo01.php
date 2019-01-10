<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FUNCIONES DE FECHA</title>
</head>
<body>
    <h1>Sesion 02</h1>
    <h3>Uso de la Función Fecha</h3>
    <?php
        // Haciendo uso de la funcion fecha
        echo date("d-m-y");
        echo "<br>";
        $anio_actual = date("Y");
        $anio_nacimiento = 1991;
        echo "La edad es:". ($anio_actual - $anio_nacimiento)."<br>";
    ;?>

    <h3>Creación de Funciones</h3>
    <!-- Haciendo uso de una función -->
    <?php
        function sumavalues($num1, $num2) {
            $result = $num1 + $num2;
            return $result;
        }
        echo sumavalues(3,5);

        function saludo_mañana(){
            return "hola como estas";
        }
        echo saludo_mañana()."<br>";
    ;?>
    <h3>Funciones Variables</h3>
    <?php
        $saludo = "días";
        $funcion_variable  = "Buenos" . $saludo;
    ;?>

</body>
</html>
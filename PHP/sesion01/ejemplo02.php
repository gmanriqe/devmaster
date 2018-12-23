<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Curso de PHP 7</title>
    <style>
    h3 {
        font-size: 32px;
    }
    </style>
</head>
<body>
    <h3>Variables</h3>
    <!-- echo sera utilizado para imprimir data en pantalla -->
    <?php
        echo "Este es mi primer Hola Mundo";
        // imprime toda la info del php que estes utilizando phpinfo();

        $var_1 = 20;
        $Var_1 = 20;
        $var_2 = 20.3;
        $var_3 = "20.5";
        $var_4 = true;
        $var_5 = null;

        echo "valor de la variables es: $var_1 <br>";
        echo "valor de la variables es: ".$Var_1."<br>";
        echo "valor de la variables es: ".$var_2."<br>";
        echo "valor de la variables es: ".$var_3."<br>";
        echo "valor de la variables es: ".$var_4."<br>";
        echo "valor de la variables es: ".$var_5."<br>";
        
        echo "<br><br><br>";

        $numero_double = 123.123;
        $numero_double2 = 0.123;
        $numero_double3 = 123.0;
        $numero_double4 = -12.3;
        echo "Número double: $numero_double <br>";
        echo "Número double: $numero_double2 <br>";
        echo "Número double: $numero_double3 <br>";
        echo "Número double: $numero_double4 <br>";

        // para poder visualizar los decimales
        printf("%f","$numero_double3");

        $cadena1 = "Esto es una cadena de caracteres";
        $cadena2 = 'Esto es una cadena de caracteres en comillas simples';
        $cadema3 = "";

        echo "<br> $cadena1";
        echo "<br> $cadena2";

        $variable__boolean = true;

        if($variable__boolean){
            echo "<br> Es true";
        }else {
            echo "<br> Es false";
        }

        $variable__boolean2 = NULL;
        if($variable__boolean2){
            echo "<br> Es true";
        }else {
            echo "<br> Es false";
        }

        $variable1 = "hola";
        $$variable1 = "mundo";

        echo "<br> $variable1 ";
        echo "<br> $$variable1";

        echo "<br><br><br>";
;?>
<h3>Funciones</h3>
<?
        // contastantes: Son tipos de datos que no varian y se declaran con la funcion define()
        // define("nombre_de_constante","valor_de_constante");

        define("instituto","DevMaster");
        define("color_rojo","ff0000");
        echo "<br> instituto";
        echo "<br> color_rojo";

        // defined() es la funcion para definir si esta definida o no
        if(defined("instituto")){
            echo "<br>Está DEFINIDA la variable";
        }else {
            echo "<br>No está DEFINIDA la variable";
        }

        $dni = 71998055;
        // isset() verifica si la variable existe o no y te devuelve un boolean
        if(isset($dni)){
            echo "<br> Tu dni es: $dni";
        }

        // unset() destruye una variable
        unset($dni);
        if(isset($dni)){
            echo "<br> Tu dni es: $dni";
        }else {
            echo "<br> Ya no existe la variable dni!! <br><br><br>";
        }


        // gettype() me devuelve el tipo de dato
        $mail = "gmanriqe@gmail.com";
        $string = "123";
        $number = 123;
        echo gettype($mail);
        echo gettype($string);
        echo gettype($number);

        echo "<br><br><br>";

        // settype('nombre_de_variable','conversion')
        if(settype($number,"boolean")) {
        // if(settype($number,"string")) {
        // if(settype($number,"double")) {
            echo "Variable number convertida a double <br>";
        }else {
            echo "Variable number no pudo ser convertida a double";
        }

        echo "valor actual de number es: $number";

        // isjnintegerf();
        // is_double();
        // is_integer();
        // is_string();
        $prueba = 0;
        if(is_integer($prueba)){
            echo  "<br> Prueba es del tipo entero <br>";
        }else {
            echo "<br> No es integer";
        }

        // conversion de un string a integer
        $prueba2 = "123456";
        echo "el tipo de la variables es: ".gettype($prueba2)."<br>";
        $numero1 = intval($prueba2);
        echo "el tipo de la variables es: ".gettype($numero1)."<br>";
;?>
<h3>Operadores Lógicos</h3>
<p> 1.- Operador de asignación</p>
<?php
    $entero = 23;
    $entero_negativo = -$entero;
    $entero2 = -$entero_negativo;

    echo $entero."<br>";
    echo $entero_negativo."<br>";
    echo $entero2."<br>"; //(-)(-) = +

    $num1 = 2;
    $num2 = 5;

    echo "Operador Suma:" .($num1 + $num2)."<br>";
    echo "Operador Resta:" .($num1 - $num2)."<br>";
    echo "Operador Multiplicacion:" .$num1*$num2."<br>";
    echo "Operador Division:" .$num1/$num2."<br>";
    echo "Operador Resto:" .$num1%$num2."<br>";

    if($num1 > $num2){
        echo "el num1 es mayor que num2 <br>";
    }else {
        echo "el num2 es mayor que num1 <br>";
    }
    // != <> valor de diferencia
    // == === compara valor y valor y tipo
    // y -> && and
    // o -> || OR
    // xor (este es un o exclusivo al menos una sea verdadera)

    $comp1 = 3;
    $comp2 = 9;
    $comp3 = true;

    // 1era forma
    /*
    if($comp1 < $comp2) {
        if($comp3) {
            echo "Se cumplen las dos condiciones";
        }
    }
    */

    // 2da forma
    // if($comp1 < $comp2 || $comp3) {
    if($comp1 < $comp2 && $comp3) {
        echo "Se cumplen las dos condiciones <br>";
    }

    // operador ternario
    $value = false;
    $value == true ? $resultado = "ok <br>" : $resultado = "fallo <br>";
    echo $resultado;

    $a = 4; //100
    $b = 5; //101
    $c = $a & $b; // 100 .. verifica que los dos sean iguales de typo y luego toma el valor de la izquierda

    //operadores de asignacion combinada
    $e = 1;
    $e + 1; //asignacion combinada
    // $e++;
    // $e~;
    $a+=$b;
    $a-=$b;

    //diferencia entre ingremento y decremento
    $f = $a++; //4
    $f = ++$a; //5

    //tener en cuenta la jerarquia del parentesis para que php pueda saber que operacion realizar primero
    $result = 20 + (30 * 20);


    $anio_nacimiento = 1991;
    $anio_actual = 2018;

    echo "<br><br><br>";
    $edad = $anio_actual - $anio_nacimiento;
    echo "Edad: $edad <br>";
    $nueva_edad = $edad * 20;
    echo "Nuevo valor: $nueva_edad <br>";

    $resto = $anio_actual % $anio_nacimiento;
    echo "Resto: $resto";
;?>
<h3> Ejercicios </h3>
<h3>Estructura de Control y Bucles</h3>
<?php 
    // if else
    $numero1 = 5;
    $numero2 = 10;

    if($numero1 + $numero2 == 15) {
        echo "suma es correcta <br>";
    }else if ( $numero1 === "5"){
        echo "es igual <br>";
    }else {
        echo "suma incorrecta <br>";
    }

    switch ($numero1) {
        case 1:

            echo "el número es uno"."<br>";
            break;
        case 2:

            echo "el número es dos"."<br>";
            break;
        case 3:

            echo "el número es tres"."<br>";
            break;
        case 4:

            echo "el número es cuatro"."<br>";
            break;
        case 5:

            echo "el número es cinco"."<br>";
            break;
        default:

            echo "ninguna de las anteriores"."<br>";
            break;
    }

    $cont = 1;
    while ($cont <= 10) {
        echo "Este es el valor actual de cont: $cont"."<br>";
        $cont++;
    }
?>
<h3>Numero Ingresado y Contador</h3>
<?php 
    $numero_ingresar = 5;
    $contadores= 1;

    while ($contadores <= 5) {
        $nuevo_valor = $contadores * $numero_ingresar;
        echo $nuevo_valor."<br>";
        $contadores++;
    }
?>
<h3>Determinar si un numero es Par e Impar</h3>
<?php 
    $ingreso_numero = 2;
    if($ingreso_numero % 2 == 0) {
        echo "numero es par";
    }else {
        echo "el numero es impar";
    }
?>
<h3> Descuento de un Salario Neto</h3>
<?php 
    $salario = 400;
    $salario_bruto = $salario;
    $descuento_seguro = ($salario_bruto * 0.13); // 13%
    $descuento_afp = ($salario_bruto * 0.04); // 4%
    $descuentos = $descuento_seguro + $descuento_afp;
    $salario_neto = $salario_bruto - $descuentos;

    echo "Este es el Salario Neto: ".$salario_neto;

;?>
<h3> Día de Semana</h3>
<?php 
    $numero_semana = 9;
    if($numero_semana <= 7) {
        switch ($numero_semana) {
            case 1:
                echo "El dia de semana es Lunes";
                break;
                case 2:
                echo "El dia de semana es Martes";
                break;
                case 3:
                echo "El dia de semana es Miercoles";
                break;
                case 4:
                echo "El dia de semana es Jueves";
                break;
                case 5:
                echo "El dia de semana es Viernes";
                break;
                case 6:
                echo "El dia de semana es Sabado";
                break;      
            default:
                echo "El dia de semana es Domingo";
                break;
        }
    } else {
        echo "Numero ingresado incorrecto";
    }
;?>
<h3> Mayor de Dos Números</h3>
<?php 
    $number1 = 1;
    $number2 = 2;
    if ($number1 > $number2) {
        echo "Numero1 es mayor al Numero2";
    }else if ($number1 < $number2){
        echo "Numero2 es mayor al Numero1";
    }else {
        echo "Los numeros son iguales";
    }
;?>
<h3>Haciendo uso del do while</h3>
<?php 

    $num = 4;
    do {
       echo "El numero es: ".$num;
       $num++;
    } while ($num < 5);
?>
<h3>Haciendo uso de for</h3>
<p>Un for es mas rapido que un while y un do while</p>
<?php 
    $num10 = 2;
    for ($i=1; $i < 5; $i++) { 
        echo $i."x".$num10." =". ($i*$num10)."<br>";
    }
?>
<h3>Haciendo la tabla de multiplicar de 1 al 12 de un número</h3>
<?php 
    $numero = 4;
    $contador = 0;
    while ($contador <= 12) {
        $result = $contador * $numero;
        $contador++;
        echo $result.'<br>';
    }
    echo "<br><br><br>";
    for ($i=0; $i <= 12; $i++) { 
        $resul= $i * $numero;
        echo $resul.'<br>';
    }
?>
<h3>Array</h3>
<?php 
    $array = array(
        "Enero",
        "Febrero",
        "Marzo",
        "Abril",
        "Mayo",
        "Junio",
        "Julio",
        "Agosto",
        "Setiembre",
        "Octubre",
        "Noviembre",
        "Diciembre"
    );
    echo "Fecha Actual: ".date("d-m-Y")."<br>";
    echo "Día del Año: ".date("z")."<br>";
    echo "Día del Año: ".date("n")."<br>";
    //recuerda que $array es la variable que contiene nuestro meses del año
    echo "Día del Año: ".$array[date("n")-1]."<br>";
;?>
<h3>FUNCTION</h3>
<?php
    function suma($num1, $num2){
        $resutadoo = $num1 + $num2;
        return $resutadoo;
    }
    echo suma(3,5);
?>
<h3>Funciones predeterminadas de php </h3>
<?php 
    echo pi()."<br>"; //funcion pi
    echo sqrt(9)."<br>"; //funcion raiz cuadrada;
    echo rand(10,20)."<br>"; //funcion randon
    echo date("D")."<br>"; //funcion para fecha - arroja el día
    echo date("j")."<br>"; // arroja la fecha
    echo date("M")."<br>"; // arroja el mes
    echo date("Y")."<br>"; //arroja el año
?>
<h3>EJERCICIO FUNCION SALARIO BRUTO</h3>
<?php
    //  $salario = 400;
    //  $salario_bruto = $salario;
    //  $descuento_seguro = ($salario_bruto * 0.13); // 13%
    //  $descuento_afp = ($salario_bruto * 0.04); // 4%
    //  $descuentos = $descuento_seguro + $descuento_afp;
    //  $salario_neto = $salario_bruto - $descuentos;
 
    //  echo "Este es el Salario Neto: ".$salario_neto;


    function descuento($sal_b){
        $des_s= $sal_b*0.13;
        $des_afp= $sal_b*0.04;
        $des = $des_s + $des_afp;
        $sal_n = $sal_b - $des;
        return $sal_n;
    }
    echo "Este es el Salario Neto: ".descuento(1200)."<br>";

    function factorial($num){
        $resultado = 1;
        for ($i=$num; $i > 0; $i--) { 
            $resultado = $resultado * $i;
        }
        return $resultado;
    }
    $num = 5;
    echo "El factorial de $num es:" .factorial(5)."<br>";
;?>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</body>
</html>
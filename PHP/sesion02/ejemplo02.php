<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FUNCIONES DE CADENA</title>
</head>
<body>
    <h1>Funciones de Cadenas</h1>
    <h3>Duplicar cada Caracter del String</h3>
    <?php
        $variable = "hola";
        echo "$variable"."</br>";
        echo '$variable'; // aqui la variable lo toma como string, tener en cuenta


        function duplicar_caracteres($cadena){
            $tamanio = strlen($cadena);
            echo $tamanio;
            $cadena_auxiliar = "";

            for($i=0; $i< $tamanio; $i++){
                $cadena_auxiliar = $cadena_auxiliar . $cadena{$i} . $cadena{$i};
            }

            echo $cadena_auxiliar;
        }

        duplicar_caracteres("hola");
    ;?>

    <h3>Duplicar Solamente el Caracter "A"</h3>
    <?php
        function duplicar_a($string){
            $tamanio_s = strlen($string); //strlen() funcion para contar un string
            $new_string = "";
            for ($i=0; $i < $tamanio_s; $i++) { 
                if($string{$i} === "a"){
                    $new_string = $string{$i}.$string{$i};
                }else {
                    $new_string = $string{$i}.$string{$i};
                }
            }
            return $new_string;
        }
        $string = "Cadena";
        echo duplicar_a($string);
    ;?>

    <h3>Potencia de Dos Números</h3>
    <p style="display:none">Ingresas dos numeros y el segundo numero tendra que ser su potencia</p>
    <?php
        function potencia($params1, $params2) {
            $resultado = 1;
            for ($i = 1; $i <= $params2; $i++) { 
                $resultado = $params1 * $resultado;
            }
            return $resultado;
        }
        echo potencia(5, 3);
    ;?>

    <h3> Haciendo uso de <<< </h3>
    <?php
//Recuerda que para que sea tomado en cuenta, debera estar identado todo a la izquierda
$formulario = <<<INICIO
    <form action="">
    <input type="text" name="nombre" value="DevMaster">
    <br>
    <input type="submit" name="submit" value="Enviar">
    </form>
INICIO;
    echo $formulario;
;?>

    <h3>Funciones strlen(), strpos(), strcmp()</h3>
    <?php
        $segunda_cadena = "Esta cadena tiene muchas letras";
        $numero = strlen($segunda_cadena);
        echo $segunda_cadena."<br>";
        // strpos() funcion que recibe dos parametros, donde el segundo es el caracter encontrado. Devuelve la posicion.
        echo "La primera letra a esta en la posicion: ". strpos($segunda_cadena,"E")."<br>";

        
        $cadena1 = "Prueba";
        $cadena2 = "Prueba2";

        if(strcmp($cadena1, $cadena2) == 0){
            echo "Ambas cadenas son iguales";
        }else if(strcmp($cadena1, $cadena2) > 0) {
            echo "Cadena1 es mas grande que cadena 2";
        }else if(strcmp($cadena1, $cadena2) < 0) {
            echo "Cadena2 es mas grande que cadena 1";
        }
    ;?>

    <h3>Funcion strstr(), strlen(), str_replace(), trim(), ltrim(), strtolower(), strtoupper(), ucfirst(), ucwords()  </h3>
    <?php
       $string1 = " Esta cadena tiene muchas letras    ";
       echo "La palabra cadena esta: ". strstr($string1,"cadena")."</br>";
       // como segundo parametro 0 te devuelve todo el string
       echo substr($string1,0)."<br>";
       // como segundo parametro 5 te devuelve los 5 primeros caracteres
       echo substr($string1,5)."<br>";
       // como segundo parametro -6 te devuelve 6 caracteres de atras para adelante
       echo substr($string1,-6)."<br>";
       // como segundo parametro -6 te devuelve 6 caracteres de atras para adelante, pero solo muestra 2 caracteres
       echo substr($string1,-10,4)."<br>";

       echo strlen($string1)."</br>"; //35 cuenta cuantos caracteres tiene la cadena
       echo strlen(ltrim($string1))."</br>"; //36 cuenta los espacios del principio y final de la cadena
       echo strlen(trim($string1))."</br>"; //31 no cuenta los espacios del principio y final de la cadena

       echo str_replace("Esta", "Este", $string1). "</br>";

       echo strtolower($string1). "</br>"; //todo en minuscula
       echo strtoupper($string1). "</br>"; //todo en mayuscula

       echo ucfirst($string1). "</br>"; //primera letras de la oracion en mayuscula
       echo ucwords($string1). "</br>"; //primera letra de cada  palabra en mayuscula

    ;?>
</body>
</html>
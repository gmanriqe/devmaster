<?php

    // imprimir la letra e del nombre: Luis Miguel
    echo "<h2>Imprimiendo la letra e del nombre Luis Miguel</h2>";
    $nombre = "luis miguel";

    
    for ($i=0; $i < strlen($nombre); $i++) { 
       if ($nombre{$i}=="e"){

           echo $i."<br>";
       }

    }

    echo "<h2>Devuelve todo el string despues del primer espacio</h2>";
    //de esta forma tambien es valida
    echo substr($nombre, strpos($nombre," "))."<br>";

    echo "<h2>Contando las vocales del nombre Luis Miguel</h2>";
    //contando cuantas vocales tiene el nombre luis miguel
    $count_vocal = 0;
    $nombre_minuscula = strtolower($nombre); //el nombre en minuscula, ya que en mayuscula no cuenta
    for ($i=0; $i < strlen($nombre_minuscula) ; $i++) { 
        if($nombre_minuscula{$i}=="a" || $nombre_minuscula{$i}=="e" || $nombre_minuscula{$i}=="i" || $nombre_minuscula{$i}=="o"  || $nombre_minuscula{$i}=="u" ){
            $count_vocal++;
        }
    }
    echo $count_vocal."<br>";

    echo "<h2>Contando las vocales del nombre Luis Miguel c/preh_match()</h2>";
    $count_vocal_2 = 0;
    for ($i=0; $i < strlen($nombre_minuscula); $i++) { 
        if(preg_match("/[aeiou]/",$nombre_minuscula{$i})){
            $count_vocal_2++;
        }
    }
    echo $count_vocal_2."<br>";
    
    $a = "hola";

    echo '$a'.""; // ejecutará como un un string $a
    echo "$a"; //ejecutará la variable

    
    $num = 1000.03;
    printf($num);
    echo $num;
    var_dump($num);

    $letrs = "Aula";
    echo substr($letrs,0,1);

    $mundo = str_replace(' ', '',"Mundo Magico");

    echo $mundo;
    $count_voc = 0;
    $count_cons = 0;
    echo "<br>";
    echo "<br>";
    
    for ($i=0; $i < strlen($mundo) ; $i++) { 
        if($mundo{$i}=="a" || $mundo{$i}=="e" || $mundo{$i}=="i" || $mundo{$i}=="o"  || $mundo{$i}=="u" ){
            $count_voc++;
        }else if($mundo{$i} !== "a" || $mundo{$i} !== "e" || $mundo{$i}!=="i" || $mundo{$i}!=="o"  || $mundo{$i}!=="u") {
            $count_cons++;
        }
    }
    echo $count_vocal."<br>";
    echo $count_cons."<br>";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Formulario</title>
</head>
<body>
    <!-- $_GET es una variable global y se acostumbra a llamarla en mayuscula -->
    <h1>Datos Introducidos</h1>
    <?php
        foreach ($_GET as $key => $value) {
            if($key != 'gustos'){
                echo "$key : $value <br>";
            }
        }

        echo "<br>Gustos: <br>";
        // isset() es una funcion que indica si existe o no existe
        if(isset($_GET['gustos'])){
            $gustos = $_GET['gustos'];
            foreach ($gustos as $indice => $valor) {
                // var_dump($gustos);
                echo "$indice : $valor <br>";
            }
        }
    ;?>
</body>
</html>
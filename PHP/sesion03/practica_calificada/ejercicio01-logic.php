<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 01 - Logic</title>
</head>
<body>
    <?php
        $number = $_POST['number'];
        multiplica($number);
        function multiplica($value){
            
            for ($in=1; $in <= $value; $in++) { 
                for ($i=0; $i <= 12; $i++) { 
                    if($i <= 12){
                        // echo "<table>";
                        $result = $in * $i; 
                        echo "$result ";
                        // echo "</table>";
                    }
                    
                }
                
            }
            
        }
    ?>
</body>
</html>
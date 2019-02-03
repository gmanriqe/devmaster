<!-- fetch_assoc => es una forma de leer resultados -->
<!-- fetch_all => te traera toda informacion del resultado (incluso el tipo de dato) -->
<!-- free() => funcion que ayuda a liberar memoria (buenas practicas) -->
<?php
    $res = null;
    if(isset($_GET['nouser'])){
        $res = $_GET['nouser'];
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login | Sitio Web</title>
    <!-- Bootstrap CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/base.css">
</head>
<body>
    <div class="container">
        
        <header class="d-flex justify-content-between">
            <a href="login.php" class="nav-brand">
                <!-- logo esta en el aula -->
                <img class="brand" src="img/cell_logo.png" alt="Logo">
            </a>
            <nav class="nav-header">
                <ul>
                    <li><a href="">Login</a></li>
                    <li><a href="">Productos</a></li>
                </ul>
            </nav>
        </header>

        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="panel panel-default">
                        <div class="panel-body">
                            <form class="form-horizontal" action="usuario.php" method="POST" name="login_form">
                                <div class="logo-form-container">
                                    <img id="userimg" src="img/user.png" alt="">
                                </div>
                                <div class="form-group">
                                    <label for="dni">DNI</label>
                                    <input class="form-control" type="text" id="dni" name="dni" placeholder="Ingrese DNI">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input class="form-control" type="password" id="password" name="password" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Login</button>
                                </div>
                                <?php 
                                    if($res==1){
                                        echo "<span style='color: red'>Usuario o Contraseña Incorrecta<span>";
                                    }
                                ?>
                            </form> <!-- /form -->
                        </div>
                </div>
            </div>
        </div>
    </div>
   
    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
</body>
</html>
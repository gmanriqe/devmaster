<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        * {
            box-sizing: border-box;
        }
        h1 {
            text-align: center;
        }
        label {
            font-size: 23px;
        }
        .main-container input[type="text"] {
            width: 100%;
            font-size: 23px;
        }
        .main-container input[type="submit"]{
            display: inline-block;
            max-width: 200px;
            font-size: 23px;
            margin: 0 auto;
            
            
        }
        .main-container {
            height: 100vh;
            position: relative;
        }
        .form {
            width: 50%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border-radius: 4px;
            padding: 20px;
            background-color: #A2CEDD;
            max-width: 500px;
            margin: 0 auto;
        }
        .btn-submit {
            margin-top: 10px;
            text-align: center;
        }
        
    </style>
</head>
<body>
    <div class="main-container">
            <form class="form" method="POST" action="ejercicio01-logic.php">
                <label for="">Id Producto </label>
                <input type="text" name="id">
                <div class="btn-submit">
                    <input type="submit" value="Enviar">
                </div>
            </form>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .form-login {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        form {
            background-color: #EFEFEF;
            padding:40px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="form-login">
        <form action="conexion2.php" method="post">
            <table>
                <tr>
                    <td>usuario</td>
                    <td><input type="text" name="user"></td>
                </tr>
                <tr>
                    <td>password</td>
                    <td><input type="password" name="pass"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center"><input type="submit" name="login" value="Login"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
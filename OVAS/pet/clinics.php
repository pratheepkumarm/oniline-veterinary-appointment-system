<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css.css">

    <style>
        body {
            background-color: lightblue;
        }

        ul {
            list-style-type: none;
            margin: ;
            padding: 10px;
            overflow: hidden;
            background-color: #333;
            width: 1370px;
        }

        li {
            float: left;
        }

        li a:hover {
            background-color: #111;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px;
            text-decoration: none;
        }

        .login {
            margin-top: 100px;
            margin-left: 40px;
        }

       
    </style>
</head>

<body>
    <div class="row justify-content-center">

        <div>
            <ul>
                <li><a class="active" href="#home">Admin login </a></li>

            </ul>
        </div>
        <div class="login">
            <form action="" method="post">

                <div class="form-group">
                    <h3><label for="city">Choose a city:</label></h3>
                    <select name="city" id="city">
                        <option value="mysore">mysore</option>
                        <option value="hunsuru">hunasuru</option>

                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary" name="submit">submit</button>
                </div>
            </form>
</body>

</html>

<?php
$conn = new mysqli('localhost', 'root', '', 'ovas_db') or die(mysqli_error($conn));
if (isset($_POST['submit'])) {
    $city = $_POST['city'];
    echo " $city";
    $result = $conn->query("SELECT * FROM city WHERE city LIKE'%{$city}%'");
    $row = $result->fetch_array();
    $city1 = $row['city'];

    if ($city1 == "mysore") {
        header('location:mysore.php');
    } else {
        header('location:hunsuru.php');
    }
}


?>
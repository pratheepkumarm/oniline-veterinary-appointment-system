<?php

$conn = new mysqli('localhost', 'root', '', 'ovas_db') or die(mysqli_error($conn));
$nameErr = $emailErr = $genderErr = $passErr = "";
$name = $email = $gender = $comment = $password = "";
$check = 0;
if (isset($_POST['submit'])) {
    if (empty($_POST["name1"])) {
        $nameErr = "Name is required";
        $check++;
    } else {
        $name = ($_POST["name1"]);
        if (!preg_match("/^[a-zA-Z-' ]*$/", $name)) {
            $nameErr = "Only letters and white space allowed";
            $check++;
        }
    }
    if (empty($_POST["email"])) {
        $emailErr = "Email is required";
        $check++;
    } else {
        $email = ($_POST["email"]);
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $emailErr = "Invalid email format";
            $check++;
        }
    }
    if (empty($_POST["password"])) {
        $passErr = "password is required";
        $check++;
    } else {
        $password = ($_POST["password"]);
        if (!preg_match("/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/", $password)) {
            $passErr = "must contain one capital one small letters and one digit";
            $check++;
        }
    }
    if (empty($_POST["phone"])) {
        $phone = "";
    } else {
        $phone = ($_POST["phone"]);
    }
    if (empty($_POST["address"])) {
        $address = "";
    } else {
        $address = ($_POST["address"]);
    }
    if (empty($_POST["gender"])) {
        $genderErr = "Gender is required";
        $check++;
    } else {
        $gender = ($_POST["gender"]);
    }
    if ($check == 0) {
        $conn->query("INSERT INTO register (name,email,phone,password,address,gender) VALUES('$name','$email','$phone','$password','$address','$gender')") or die($conn->error);
        header('location:login2.php');
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rgister page</title>
    <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css.css">
</head>
<style>

    .a {
       color: black;
           font-size: 20px;
    font-family: 'Playfair Display', serif;
        text-shadow: 3px 3px 5px black;
    }

    

    .form-control:focus {

        color: #000000;
        background-color: #ffffff;
        border: 3px solid #da5767;
        outline: 0;
        box-shadow: none;

    }

    .btn-primary:hover {


        background-color: #df8c96;
        border-color: #df8c96;
        transition: .3s;

    }

    .error {
        color: black;
           font-size: 15px;
    font-family: 'Playfair Display', serif;
        text-shadow: 3px 3px 5px wheat;
        
    }
   body{
    background-image: linear-gradient(#136a8a, #267871);
    height: 700px;
}


header{

    min-height: 100px;
    display: flex;
    justify-content: space-between;
    padding-top: 50px;
    padding-bottom: 40px;
    align-items: center;
         font-family: 'Playfair Display', serif;
         border-bottom: 2px solid rgb(255, 255, 255);
         margin-bottom: 15px;
}
h1{
    font-size: 50px;
    font-family: 'Playfair Display', serif;
    margin-bottom: 1.5rem;
    text-shadow: 3px 3px 5px black;
       line-height: 20px;
  margin-right:375px;
 
}
</style>

<body>
    <div class="container">

    <header>
            <div class="logo">
                    </div>
                      <h1>REGISTRATION</h1>
               
     </header>
     <main>
        <div class="row justify-content-center">
            <form action="" method="post">
            
                <div class="form-group">

                    <input type="text" name="name1" class="form-control" placeholder="Name" required>
                    <span class="error"><?php echo $nameErr; ?></span>

                </div>
                <div class="form-group">
                    <input type="text" name="email" class="form-control" placeholder="Email" required>
                    <span class="error"><?php echo $emailErr; ?></span>

                </div>
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" placeholder="Phone" required>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                    <span class="error"><?php echo $passErr; ?></span>

                </div>
                <div class="form-group">
                    <textarea placeholder="Address" rows="3" cols="3" name="address" class="form-control" required></textarea>
                </div>
                <div class="form-group a">
                    Gender:
                    <input type="radio" name="gender" value="female">Female
                    <input type="radio" name="gender" value="male">Male
                    <input type="radio" name="gender" value="other">Other
                    <span class="error"><?php echo $genderErr; ?></span>
                   
                    <br><br>
                </div>
                <button type="submit" class="btn btn-primary" name="submit">Register</button>

            </form>
        </div>
    </div>
    </main>
</body>

</html>
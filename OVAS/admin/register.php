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
</head>
<style>
    body {
  background: url('https://mainstvets.com/wp-content/uploads/2019/01/How-Often-Should-I-Bring-My-Pet-to-the-Vet.jpeg') no-repeat;
background-size: cover;

    }
    .a{
        margin-top: 25px;
    }
   h1{
    background-color: blue;
    border-radius: 10px;
   
   }
</style>

<body>
    <div class="row justify-content-center a">
        <form action="" method="post">
           <h1 style ="color:white;font-family: 'Times New Roman', Times, serif;"><b>REGISTRATION</b></h1>
         
                <label style ="color:black; font-size: larger;">Name</label>
                <input type="text" name="name1" class="form-control" required>
            
           
                <label style ="color:black; font-size: larger;">Email</label>
                <input type="text" name="email" class="form-control" required>
         
                <label style ="color:black; font-size: larger;">Phone</label>
                <input type="text" name="phone" class="form-control" required>

                    <label style ="color:black; font-size: larger;">Password</label>
                    <input type="password" name="password" class="form-control"required>
                
                 <div class="form-group">
                    <label style ="color:black; font-size: larger;">Address</label>
                    <textarea rows="5" cols="3" name="address" class="form-control"> </textarea>
                </div>
                <button type="submit" class="btn btn-primary" name="submit">Register</button>

        </form>
    </div>
</body>

</html>
<?php

$conn=new mysqli('localhost','root','','ovas_db') or die(mysqli_error($conn));
if(isset($_POST['submit']))
{ 
   $name=$_POST['name1'];
$email=$_POST['email'];
$password=$_POST['password'];
$phone=$_POST['phone'];
$address=$_POST['address'];
$conn->query("INSERT INTO register (name,email,phone,password,address) VALUES('$name','$email','$phone','$password','$address' )") or die($conn->error);
header('location:login2.php');
}
?>
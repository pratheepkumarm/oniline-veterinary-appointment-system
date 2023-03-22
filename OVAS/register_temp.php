<?php

$conn = new mysqli('localhost', 'root', '', 'ovas_db') or die(mysqli_error($conn));

if(isset($_POST['register'])){
    $name=$_POST['first_name'];
    $email=$_POST['email'];
	  $phone=$_POST['phone'];
    $pwd=$_POST['password'];
    $addr=$_POST['address'];

 
        $sql = "INSERT INTO register(name,email,phone,password,address) VALUES('$name','$email','$phone','$pwd','$addr')";
        $result = mysqli_query($conn, $sql);

        header('location:login_temp.php');
}
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registration Page</title>
    <link rel="stylesheet" href="style.css">
  </head>
	<body>
    <div class="center">
      <h1>REGISTER</h1>
      <form method="post" action="">
        <div class="txt_field">
          <input type="text" name="first_name" required autocomplete="off">
          <span></span>
          <label>Name</label>
        </div>

        <div class="txt_field">
          <input type="email" name="email" required autocomplete="off">
          <span></span>
          <label>Email</label>
        </div>

        <div class="txt_field">
          <input type="text" name="phone" maxlength="10" minlength="10" required autocomplete="off">
          <span></span>
          <label>Phone</label>
        </div>

        <div class="txt_field">
          <input type="password" name="password" required>
          <span></span>
          <label>Password</label>
        </div>
		
        <div class="txt_field">
          <input type="address" name="address" required autocomplete="off">
          <span></span>
          <label>Adress</label>
        </div>


        <!--<div class="pass">Forgot Password?</div>-->
        <input type="submit" name="register" value="Register">
      </form>
      <div class="signup_link">
          Already a member? <a href="login_temp.php">Login</a>
       </div>
    </div>
  </body>
</html>
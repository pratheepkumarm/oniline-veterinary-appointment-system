<?php

$conn = new mysqli('localhost', 'root', '', 'ovas_db') or die(mysqli_error($conn));


if(isset($_POST['Login'])){
   $name = mysqli_real_escape_string($conn, $_POST['reg_no']);
   /*$email = mysqli_real_escape_string($conn, $_POST['email']);*/
   $pass = ($_POST['password']);
   /*$user_type = $_POST['user_type'];*/

   $select = " SELECT * FROM register WHERE name = '$name' && password = '$pass' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

    $row = mysqli_fetch_array($result);
	  header('location:index.php');
     
   }
   else
   {
	   $error[] = 'Incorrect name or password!';
   }

};
?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Enter your credentials to login</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <div class="center">
      <h1>LOGIN</h1>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo "<center><span class=\"error-msg\" style=\"color:crimson; padding:10px 80px;\">$error</span></center>";
         };
      };
      ?>
      <form method="post" action="">
        <div class="txt_field">
          <input type="text" name="reg_no" required autocomplete="off">
          <span></span>
          <label>User Name</label>
        </div>
        <div class="txt_field">
          <input type="password" name="password" required>
          <span></span>
          <label>Password</label>
        </div>
        <!--<div class="pass">Forgot Password?</div>-->
        <input type="submit" name="Login" value="Login">
      
      </form>
      <div class="A1">
      <a class="active" href="admin/login.php">
        <h4>Admin login </h4>
      </a>
    </div>
      <div class="signup_link">
          Not a member? <a href="register_temp.php">Signup</a>
        </div>
    </div>
  </body>
</html>

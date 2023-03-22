<?php

$conn = new mysqli('localhost', 'root', '', 'ovas_db') or die(mysqli_error($conn));
$namerr = "";
if (isset($_POST['login'])) {
  $name = $_POST['name1'];
  $password1 = $_POST['password1'];
  $result = $conn->query("SELECT * FROM register WHERE name LIKE'%{$name}%' AND password LIKE '%{$password1}'");


  if ($row = $result->fetch_assoc()) {

    header('location:index.php');
  } else {
    $namerr = "Invalid Username or Password";
    //echo"<script>alert('invalid username');</script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>login page</title>
  <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="css.css">

  <style>
    /*   body {
  background: url('https://www.marlborovets.com/wp-content/uploads/2020/07/iStock-615923410-scaled-e1600275860907.jpg');
  background-size: cover;
}*/
    body {
      /* background-image: linear-gradient(#136a8a, #267871); */
      height: 700px;

    }

    .register {
      display: grid;
      color: blue;
      text-decoration: none;
    }

    .register a:hover {
      background-color: white;
      border-radius: 10px;
    }

    h1 {
      font-size: 50px;
      font-family: 'Playfair Display', serif;
      margin-bottom: 1.5rem;
      text-shadow: 3px 3px 5px black;
      line-height: 20px;


    }

    header {

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
    h5{
       font-size: 25px;
    font-family: 'Playfair Display', serif;
    margin-bottom: 1.5rem;
    text-shadow: 3px 3px 5px wheat;
       line-height: 10px;
 
    }
    h4{
        font-size: 25px;
      color:black;
      text-decoration: none;
       text-shadow: 3px 3px 5px wheat;
     font-family: 'Playfair Display', serif;
    }
    .navbutton{
    border: 1px solid white;
   font-family: 'Playfair Display', serif;
   padding: 11px 20px;
   display: inline-block;
   position: relative;
}


.navbutton{
  
  background: linear-gradient(to left,rgb(175, 23, 23),rgb(50, 50, 140) 50%,rgb(202, 22, 46) 50%);

     background-size: 300% 100%;
     background-position: 100%;
  transition: background-position 400ms linear;
}
.btn-primary:hover {


        background-color:#df8c96;
;
        border-color:#df8c96;
        transition: .3s;

    }
  
  </style>
</head>

<body>

<div class="container">
    <header>
      <div class="logo">      </div>
      <h1>LOGIN</h1>

      <a class="active" href="admin/login.php">
        <h4>Admin login </h4>
      </a>

    </header>

    <fieldset>

  <div class="row justify-content-center">
    <form action="" method="post">

   
      <div class="form-group">
        <h5><?php echo $namerr; ?></h5> <br>
        <label>
          <h5>Name</h5>
        </label>
        <input type="text" name="name1" class="form-control" placeholder=" enter the name" required>

      </div>
      <div class="form-group">
        <label>
          <h5>Password</h5>
        </label>
        <input type="password" name="password1" class="form-control" placeholder=" enter the password" required>
      </div>
      <div class="form-group ">
     
        <button type="submit" class="btn btn-primary" name="login">login</button>
  
      </div>
      <h5>if you are new user please register </h5><a class="register" href="register.php">
        <h5>register</h5>
      </a>
  </div>
  </div>
  
  </form>
  
</div>
</fieldset>
</body>

</html>
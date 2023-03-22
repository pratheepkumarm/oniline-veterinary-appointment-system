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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<title>PHP Crud Operation!!</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>



    <link rel="stylesheet" href="css.css">
</head>
<style>
 
body {
    color: #fff;
    background: #63738a;
    font-family: 'Roboto', sans-serif;
}
.form-control {
    height: 40px;
    box-shadow: none;
    color: #969fa4;
}
.form-control:focus {
    border-color: #5cb85c;
}
.form-control, .btn {        
    border-radius: 3px;
}
.signup-form {
    width: 650px;
    margin: 0 auto;
    padding: 30px 0;
    font-size: 15px;
}
.signup-form h2 {
    color: #636363;
    margin: 0 0 15px;
    position: relative;
    text-align: center;
}
.signup-form h2:before, .signup-form h2:after {
    content: "";
    height: 2px;
    width: 30%;
    background: #d4d4d4;
    position: absolute;
    top: 50%;
    z-index: 2;
}   
.signup-form h2:before {
    left: 0;
}
.signup-form h2:after {
    right: 0;
}
.signup-form .hint-text {
    color: #999;
    margin-bottom: 30px;
    text-align: center;
}
.signup-form form {
    color: #999;
    border-radius: 3px;
    margin-bottom: 15px;
    background: #f2f3f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
}
.signup-form .form-group {
    margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
    margin-top: 3px;
}
.signup-form .btn {        
    font-size: 16px;
    font-weight: bold;      
    min-width: 140px;
    outline: none !important;
}
.signup-form .row div:first-child {
    padding-right: 10px;
}
.signup-form .row div:last-child {
    padding-left: 10px;
}       
.signup-form a {
    color: #fff;
    text-decoration: underline;
}
.signup-form a:hover {
    text-decoration: none;
}
.signup-form form a {
    color: #5cb85c;
    text-decoration: none;
}   
.signup-form form a:hover {
    text-decoration: underline;
}  
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: red;}
.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


</style>



<body>
<div class="signup-form">
    <form  method="POST">
 
        <h1><p class="hint-text">Pets report form</p></h1>
        <div class="form-group">
            <div class="row">
                <div class="col"><input type="text" class="form-control" name="code" placeholder=" Appointment code"  required="true"></div>
                
            </div>          
        </div>
      
                <div class="form-group">
            <input type="text" class="form-control" name="name" placeholder=" NAME"    required="true">
        </div>
        
        
        <div class="form-group">
             <input type="text" class="form-control" name="pet" placeholder=" PET"    required="true">
        </div>  
  <div class="form-group">
            <input type="text" class="form-control" name="breed" placeholder=" Breed"  required="true" >
        </div>      
        
        <div class="form-group">
            <input type="text" class="form-control" name="age" placeholder=" AGE" required="true" >
        </div>
            <div class="form-group">
            <input type="text" class="form-control" name="mobileno" placeholder="  MOBILE NUMBER"  required="true">
        </div>





        <div class="form-group">
             <input type="text" class="form-control" name="email" placeholder=" EMAIL"    required="true">
        </div>  
  <div class="form-group">
            <input type="text" class="form-control" name="address" placeholder=" ADDRESS"  required="true" >
        </div>      
        
        <div class="form-group">
             <textarea name="discription" class="form-control" rows="6" cols="50" placeholder=" DISCRIPTION" required="true"></textarea>


        </div>
            <div class="form-group">
                <textarea name="medicine" class="form-control" rows="6" cols="50" placeholder="  MEDICINE" required="true"></textarea>
          
        </div>
                
        
        <div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block" name="submit">Update</button>
        </div>
    </form>

</div>
   
</body>









</html>
<?php
$conn = new mysqli('localhost', 'root', '', 'ovas_db') or die(mysqli_error($conn));
if (isset($_POST['submit'])) {
    $code = $_POST['code'];
    $ownername = $_POST['name'];
    $pet = $_POST['pet'];
    $breed = $_POST['breed'];
    $age = $_POST['age'];
    $mobileno = $_POST['mobileno'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $discription = $_POST['discription'];
    $medicine = $_POST['medicine'];

    $conn->query("INSERT INTO report (code,name,pet,breed,age,mobileno,email,address,discription,medicine) VALUES('$code','$ownername','$pet','$breed','$age','$mobileno','$email','$address','$discription','$medicine')") or die($conn->error);
}

?>
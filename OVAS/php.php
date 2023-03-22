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
if(isset($_POST['login']))
{ 
    $name=$_POST['name1'];
    $password1=$_POST['password1'];
    $result=$conn->query("SELECT * FROM register WHERE name LIKE'%{$name}%' AND password LIKE '%{$password1}'");


if($row=$result->fetch_assoc())
{
    
    header('location:index.php');

}
else{
    echo" invalid username";
}

}

    // $mode1=$row["mode"];

   /* echo $row["name"];
 echo $row["password"];
 echo $mode1;*/
//  if($mode1=="BUYER")
//  {
//      header('location:buyer.php');
//  }
//  else{
//      header('location:saler.php');
//  }
// }
// else
// {

//  echo "invalid";
// }
// }
?>
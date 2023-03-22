<html>
<head>
<title>Document</title>
</head>
<body>
<form action=" " method="post" class="a">
<h1><center> REPORT</center></h1>
<h5>Enter Your Appointment ID to Check Your report: </h5>
<input type="text" name="code" placeholder=" enter your id" required autocomplete="off"><br><br>
<div class="form-group">
  <button type="submit" class="btn btn-primary" name="submit">submit</button>
</div>
</form>
</body>
</html>
<style>
.A{
	background-color: greenyellow;
	border-radius: 25px;
	padding:10px 10px 10px 60px;
}
.P{
	background-color: orange;
	border-radius: 25px;
	padding:10px 10px 10px 40px;
}
.R{
	background-color: red;
	border-radius: 25px;
	padding:10px 10px 10px 40px;
}

table{
	width:75%;
}
th,td{
	padding: 20px;
}

/* div.t1{
	height: 800px;
	width:800px;
  
 border-style:solid;
 
} */
h2{
    padding-bottom: 20px;
	padding-left: 275px;
}
h1{
	padding-top: 10px;
	padding-left: 20px;
	line-height: 55px;
}
table,th, td {
margin-left: auto;
margin-right: auto;
border: 1px solid black;

height: 40px;
padding: auto;
}

.a{
text-align: center;
}
h3{
text-align: center;
}
</style>
<table>
<?php
$conn = new mysqli('localhost', 'root', '', 'ovas_db') or
die(mysqli_error($conn));
if (isset($_POST['submit'])) {
$code=$_POST['code'];
$result = $conn->query("SELECT * FROM report WHERE code
LIKE'%{$code}%'");
if ($row = $result->fetch_assoc()) {
?>

<!-- <h1>Appointment code :<?php echo $row['code']; ?></h1>
<h1>Owner name : <?php echo $row['name']; ?></h1>
<h1>Pet : <?php echo $row['pet']; ?></h1>
<h1>Breed :<?php echo $row['breed']; ?></h1>
<h1>Age : <?php echo $row['age']; ?></h1>
<h1>Address :<?php echo $row['address']; ?></h1>
<h1>Report : <?php echo $row['discription']; ?></h1>
<h1>Medicine : <?php echo $row['medicine']; ?></h1> -->

<tr>
<th>Appointment code</th>
<th>NAME</th>
<th>Pet</th>
<th>Breed</th>
<th>Age</th>
<th>Address</th>
<th> Report</th>
<th> medicine</th>
</tr>
<tr>
<td><?php echo $row['code']; ?></td>
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['pet']; ?></td>
<td><?php echo $row['breed']; ?></td>
<td><?php echo $row['age']; ?></td>
<td><?php echo $row['address']; ?></td>
<td><?php echo $row['discription']; ?></td>
<td> <?php echo $row['medicine']; ?></td>
<?php
} else {
echo "<h1><center>Please Enter valid appointment id</h1></center>";
}}

?>
</table>
</div>

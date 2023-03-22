<html>
<head>
<title>Document</title>
</head>
<body>
<form action=" " method="post" class="a">
<h1><center> Your application status </center></h1>
<h5>Enter Your Email ID to Check Your Application Status: </h5>
<input type="text" name="email" placeholder=" enter your email id" required autocomplete="off"><br><br>
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
$email = $_POST['email'];
$result = $conn->query("SELECT * FROM appointment_list WHERE email
LIKE'%{$email}%'");
if ($row = $result->fetch_assoc()) {
?>
<tr>

<th>NAME</th>
<th>Schedule</th>
<th>Code</th>
<th>Breed</th>
<th>Age</th>
<th> Application Status</th>
</tr>
<tr>

<td><?php echo $row['owner_name']; ?></td>
<td><?php echo $row['schedule']; ?></td>
<td><?php echo $row['code']; ?></td>
<td><?php echo $row['breed']; ?></td>
<td><?php echo $row['age']; ?></td>

<?php if($row['status']=='1'):
?>
<td><div class="A"><?php echo "Accepted"; ?></div></td>
<?php
elseif($row['status']=='0'):
?>
<td><div class="P"><?php echo "Pending"; ?></div></td>
<?php
elseif($row['status']=='2'):
	?>
<td><div class="R"><?php echo "Rejected"; ?></div></td>
</tr>
<?php endif; ?>
<?php 
if($row['status']=='1')
{
	echo "<h1><center>Your Application Request As Been Accepted</center></h1>";
}
if($row['status']=='0')
{
	echo "<h1><center>Your Application Request Still In Pending</center></h1>";
}
if($row['status']=='2')
{
	echo "<h1><center>Your Application Request As Reen Rejected</center></h1>";
}
if($row['status']=='')
{
	echo "<h1><center>please wait for admin response</center></h1>";
}
?>
<?php
} else {
echo "<h1><center>Please Enter Rigisterd Email</h1></center>";
}}


?>
</table>
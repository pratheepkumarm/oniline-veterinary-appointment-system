<html>
<head>
<title>Document</title>
</head>
<body>
<form action=" " method="post" class="a">
<h1><center> your application status </center></h1>
enter your email id to check your application status: <input type="text" name="email" placeholder=" enter your email id"><br><br>
<input type="submit" name="submit">
</form>
</body>
</html>
<style>
table,th, td {
margin-left: auto;
margin-right: auto;
border: 1px solid black;
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
<th>code</th>
<th>breed</th>
<th>age</th>
<th>your application status</th>
</tr>
<tr>

<td><?php echo $row['owner_name']; ?></td>
<td><?php echo $row['schedule']; ?></td>
<td><?php echo $row['code']; ?></td>
<td><?php echo $row['breed']; ?></td>
<td><?php echo $row['age']; ?></td>

<?php if($row['status']=='1'):
?>
<td><?php echo "accepted"; ?></td>
<?php
elseif($row['status']=='0'):
?>
<td><?php echo "pending"; ?></td>
<?php
elseif($row['status']=='2'):
	?>
<td><?php echo "rejected"; ?></td>
</tr>
<?php endif; ?>
<?php 
if($row['status']=='1')
{
	echo "<h1><center>sorry we not able to book your order</center></h1>";
}
if($row['status']=='0')
{
	echo "<h1><center>Congrats your order is successfully booked</center></h1>";
}
if($row['status']=='2')
{
	echo "<h1><center>Your Application is still pending</center></h1>";
}
if($row['status']=='')
{
	echo "<h1><center>please wait for admin response</center></h1>";
}
?>
<?php
} else {
echo "<h1><center>invalid phone number</h1></center>";
}}


?>
</table>
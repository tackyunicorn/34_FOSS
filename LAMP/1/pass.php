<html>
<head>
        <title> Password Process </title>
</head>
<body>
<?php
	$username=$_GET["username"];
	$password=$_GET["password"];

	$con=mysqli_connect("localhost" , "root" , "joshua0049" , "Joshua");
	$rows=mysqli_query($con , "select * from Password where username='$username' and password='$password'");
	$count=mysqli_num_rows($rows);

	if($count == 0)
	{
	echo "Invalid username/password!";
	}
	else
	{
	echo "Success!";
	header("location:form.html");
	}
	mysqli_close($con);
?>
</body>
</html>

<html>
<head>
	<title> Update Process </title>
</head>
<body>
<?php
	$nam=$_GET["empname"];
	$incr=$_GET["incr"];

	$con=mysqli_connect("localhost" , "root" , "joshua0049" , "Joshua");
	$res=mysqli_query($con , "update Employee set empsal=empsal+$incr where empname = '$nam'");

	mysqli_close($con);

	header("location:home.html");

?>
</body>
</html>

	<html>
<head>
        <title> Insert Process </title>
</head>
<body>
<?php
	$id=$_GET["empid"];
	$nam=$_GET["empname"];
	$sal=$_GET["empsal"];
	$xp=$_GET["empexp"];

	$con=mysqli_connect("localhost" , "root" , "joshua0049" , "Joshua");
	$res=mysqli_query($con,"insert into Employee values('$id','$nam','$sal','$xp')");

	mysqli_close($con);

	header("location:home.html");
?>
</body>
</html>

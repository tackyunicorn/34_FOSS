<html>
<head>
	<title> Dipslay Process </title>
</head>
<body>
<?php
	$xp=$_GET["exp"];

	$con=mysqli_connect("localhost" , "root" , "joshua0049" , "Joshua");
	$res=mysqli_query($con , "select * from Employee where empexp > '$xp'");

	echo "The details are: <br><br>";
	echo "<table border='1'> <tr> <th> ID </th> <th> NAME </th> <th> SALARY </th> <th> EXP </th> </tr>";
	while($result = mysqli_fetch_assoc($res))
	{
		echo "<tr>";
		echo "<td>" . $result["empid"]. "</td>";
		echo "<td>" . $result["empname"]. "</td>";
		echo "<td>" . $result["empsal"]. "</td>";
		echo "<td>" . $result["empexp"]. "</td>";
		echo "</tr>";
	}

	mysqli_close($con);
?>

	<a href="home.html"><input type = "Submit" value="Go Home"/></a>

</body>
</html>

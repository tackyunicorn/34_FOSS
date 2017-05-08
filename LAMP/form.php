<html>
<head> <title> Registration Process </title> <head>
<body>
<?php
	$rno=$_GET["rollnumber"];
	$nam=$_GET["name"];
	$sem=$_GET["semester"];
	$bra=$_GET["branch"];
	$gen=$_GET["gender"];
	$ma1=$_GET["mark1"];
	$ma2=$_GET["mark2"];
	$ma3=$_GET["mark3"];

	$con=mysqli_connect("localhost" , "root" , "joshua0049" , "Joshua");
	$rows=mysqli_query($con, "insert into Student values('$rno','$nam','$sem','$bra','$gen','$ma1','$ma2','$ma3')");

	$rows2=mysqli_query($con, "select RollNo,Name,Mark1+Mark2+Mark3 AS TotalMark from Student order by TotalMark desc");

	echo "The toppers in the class are: <br><br><br>";
	while($result = mysqli_fetch_assoc($rows2))
	{
		echo "RollNo: ".$result["RollNo"]." "."Name: ".$result["Name"]." "."Total Mark: ".$result["TotalMark"]."<br><br>";
	}
	mysqli_close($con);
?>
</body>
</html>


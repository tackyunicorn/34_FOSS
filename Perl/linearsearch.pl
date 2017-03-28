print "\nFollowing is a program to perform linear search on an array \n\n";

print "Enter the number of elements in the array: \n";
$n = <STDIN>;

print "Enter the array elements: \n";
for($i=0 ; $i<$n ; $i++)
{
	$arr[$i] = <STDIN>;
}

print "Enter the number to be searched: \n";
$num = <STDIN>;

$flag = 0;
for($i=0 ; $i<$n ; $i++)
{
	if($arr[$i] == $num)
	{
		$flag = 1;
		$x = $i + 1;
		print "Found at position $x\n";
	}
}

if($flag == 0)
{
	print "Element not found!\n";
}

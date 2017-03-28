print "\nFolowing is a program to find the sum of elements in an array\n\n";

print "Enter the number of elements in the array: \n";
$n = <STDIN>;

print "Enter the arrray elements: \n";
for($i=0 ; $i<$n ; $i++)
{ 
	$arr[$i] = <STDIN>;
}

$sum=0;
for($i=0 ; $i<$n ; $i++)
{
	$sum += $arr[$i];	
}
chomp($sum);

print "The sum of the array elements is: $sum\n";

print "\nFollowing is a program to find the factorial of a number \n\n";

print "Enter the number: \n";
$num = <STDIN>;
chomp($num);

$num1 = $num;
chomp($num1);

$fact = 1;
for($i=$num1 ; $i>0 ; $i--)
{
	$fact *= $num1;
	$num1--;
}

print "The factorial of $num is $fact\n";

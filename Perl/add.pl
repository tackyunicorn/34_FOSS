print "\nFollowing is a program to add two numbers \n\n";

print "Enter the first number: \n";
$a = <STDIN>;
chomp($a);

print "Enter the second number: \n";
$b = <STDIN>;
chomp($b);

$c = $a + $b;
chomp($c);

print "The sum of $a and $b is: $c\n"; 

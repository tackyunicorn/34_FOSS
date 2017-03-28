print "\nFollowing is a program to find the largest of three numbers \n\n";

print "Enter the first number: \n";
$a = <STDIN>;
chomp($a);

print "Enter the second number: \n";
$b = <STDIN>;
chomp($b);

print "Enter the third number: \n";
$c = <STDIN>;
chomp($c);

if(($a==$b) && ($b==$c))
{
	print "All three numbers are equal!\n";
}
elsif(($a>$b) && ($a>$c))
{
	print "$a is the largest\n";
}
elsif(($b>$a) && ($b>$c))
{
        print "$b is the largest\n";
}
else
{
	print "$c is the largest\n";
}

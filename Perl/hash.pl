print "\nFollowing is a program that prints the keys and values in a hash table\n\n";

%hash = ('Joseph Antony' => 33, 'Joshua Joseph' => 34, 'Jubitta John' => 35);

@names = keys %hash;
@rollno = values %hash;

$n = @names;
$r = @rollno;

print "The list of names in the hash table is: \n";
for($i=0 ; $i<$n ; $i++)
{
	print "$names[$i]\n";
}

print "\nThe list of roll numbers in the hash table is: \n";
for($i=0 ; $i<$n ; $i++)
{
        print "$rollno[$i]\n";
}


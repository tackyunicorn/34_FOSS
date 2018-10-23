#!/usr/bin/awk -f

BEGIN{
	FS=" ";
	print "\nThe events in which Aryans secured third price are: \n"
}
NR>1{
	if($3=="t")
		print $1"\n";
}
END{
}

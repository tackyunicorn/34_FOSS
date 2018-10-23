#!/usr/bin/awk -f

BEGIN{
	FS=" ";
	print "\nThe brands that have sales greater than 250 are: \n";
}
NR>1{
	if(($2+$3+$4)>250)
		print $1": "$2+$3+$4"\n";
}
END{
}

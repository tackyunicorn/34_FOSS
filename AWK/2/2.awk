#!/usr/bin/awk -f

BEGIN{
	FS=" ";
	print "\nThe brands that sold more than 50 mobiles on tuesday are: \n";
}
NR>1{
		if($3>50)
		print $1"\n";
}
END{
}

#!/usr/bin/awk -f

BEGIN{
	count = 0;
}
{
	if($0 !~ /(F)/)
	{
		count++;
	}
}
END{
	print "Pass percentage is : "(count/NR)*100"%"
}


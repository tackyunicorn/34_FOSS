#!/usr/bin/awk -f

BEGIN{
	FS=" ";
	sum1=0;
	sum2=0;
	sum3=0;
}
{
	sum1+=$2;
	sum2+=$3;
	sum3+=$4;
}
END{
	print "Total Sales: \nMonday: "sum1"\nTuesday: "sum2"\nWednesday: "sum3;
	if(sum1>sum2 && sum1>sum3)
		print "Monday has the maximum sales";
	else if(sum2>sum1 && sum2>sum3)
		print "Tuesday has the maximum sales";
	else
		print "Wednesday has maximum sales";
}

#!/usr/bin/awk -f

BEGIN{
	FS=" ";
	print "\nThe events in which Rajputs performed better than Mughals are: \n";
}
NR>1{
	if($2=="f")
		r=5;
	else if($2=="s")
		r=3;
	else
		r=1;

	if($4=="f")
                m=5;
        else if($4=="s")
                m=3;
        else
                m=1;

	if(r>m)
		print $1"\n";

}
END{
}

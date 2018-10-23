#!/usr/bin/awk -f

BEGIN{
	FS=" ";
	print "\nThe ranklist of the teams is: \n";
	i=0;
}
NR>1{
	if($2=="f")
                r=5;
        else if($2=="s")
                r=3;
        else
                r=1;

	if($3=="f")
                a=5;
        else if($3=="s")
                a=3;
        else
                a=1;

	if($4=="f")
                m=5;
        else if($4=="s")
                m=3;
        else
                m=1;

	sumr+=r;
	suma+=a;
	summ+=m;

}
END{
	if(sumr>suma && sumr>summ)
		print "Rajputs: "sumr"\n";
	else if(suma>sumr && suma>summ)
		print "Aryans: "suma"\n";
	else
		print "Mughals: "summ"\n";

	if(sumr>suma && sumr<summ)
                print "Rajputs: "sumr"\n";
        else if(suma>sumr && suma<summ)
                print "Aryans: "suma"\n";
        else
                print "Mughals: "summ"\n";

	if(sumr<suma && sumr<summ)
                print "Rajputs: "sumr"\n";
        else if(suma<sumr && suma<summ)
                print "Aryans: "suma"\n";
        else
                print "Mughals: "summ"\n";
}

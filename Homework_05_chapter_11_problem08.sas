*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 19th Oct 2017;
/*simple random sample with replacement*/
data random;
 do i=1 to 1000;
  	x=int(ranuni(0)*5)+1;
	output ;
end;
  
  run;
  title "Frequency table";
  proc freq data=random;
  tables x;
run;

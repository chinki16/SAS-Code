*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Use of Do until loop for temperature data 	
Programmer: Chinki Rai
Date Written: 11th Oct 2017;
*Creating the data;
data invest;
interest=0.0425;
Total=1000;
do until (Total ge 30000);
	year +1;
	Total=Total+interest*Total;
	output;
end;
format Total dollar10.2;
run;
proc print data=invest;
run;

*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Use of Do until loop for temperature data 	
Programmer: Chinki Rai
Date Written: 12th Oct 2017;
*Creating the data;
data date_example;
input Day Month Year;
Date=mdy(Month, Day, Year);
format Date mmddyy10.;
datalines;
25 12 2005 
1 1 1960
21 10 1946
;
run;
title "Date ";
proc print data=date_example;
run;

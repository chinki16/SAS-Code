*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Use of Do until loop for temperature data 	
Programmer: Chinki Rai
Date Written: 12th Oct 2017;
Data prob09;
input Day Month Year;
   	if missing(Day) then date=mdy(Month,15, Year);
	else date=mdy(Month, Day ,Year);
format date MMDDYY10.;
datalines;
25 12 2005 
. 5 2002
12 8 2006
;
run;
title " Date ";
proc print data= prob09 noobs;
run;

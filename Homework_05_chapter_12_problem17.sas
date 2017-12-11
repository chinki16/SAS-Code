*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 25th Oct 2017;
*Data set PERSONAL;

data personal;
	infile datalines missover;
input #1 SS $11.
	Gender : $1.
	AcctNum : $5.
	DOB : mmddyy10.
	#2 (Food1-Food8)(: $10.);
format DOB mmddyy10.;
label SS = "Social Security Number"
	  AcctNum = "Account Number"
	  DOB = "Date of Birth";

datalines;
123-45-6789 M 0192M 11/15/1949
Eggs Pancakes Sausage Toast Milk Coffee Beef Chicken
013-54-9388 F 9981S 1/2/1981
Pancakes Milk Chicken
112-11-1309 M 1322M 03/29/1988
Beef Toast Eggs Coffee
778-44-4655 F 9899M 7/4/1981
Pancakes Sausauge Coffee Beef
445-45-4455 M 2938S 8/9/1977
Tea Toast
;

data personal;
	set personal(drop =Food1-Food8);
	substr(SS,1,7)='*******';
	substr(AcctNum,5,1)='-';
run;
title "personal dataset";
proc print data=personal;
run;

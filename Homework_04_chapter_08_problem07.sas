*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Use of Do loop and conditional statements and plotting y = 3*x2 – 5*x + 10	.
Programmer: Chinki Rai
Date Written: 11th Oct 2017;
*Creating the data;
data equation;
	do x=1 to 10 by 0.10;
		y=3*x**2-5*x+10;
		output;
	end;
run;
title 'Data Equation';
proc print data=equation;
run;
goptions reset=all ftext='arial' htext=1.0 ftitle='arial/bo' htitle=1.5 colors=(blue);
symbol v=none i=sm;
title "Plot of Y versus X";
proc gplot data=equation;
plot y*x;
run;


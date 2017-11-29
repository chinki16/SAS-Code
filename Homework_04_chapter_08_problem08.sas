*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Use of Do loop and conditional statements and plotting  Logit = log(p / (1 – p)) 	
Programmer: Chinki Rai
Date Written: 11th Oct 2017;
*Creating the data;
data problem8;
	do p=0 to 1 by 0.05;
		logit=log(p/(1-p));
		output;
	end;
run;
proc print data=problem8;
run;
goptions reset=all ftext='arial' htext=1.0 ftitle='arial/bo' htitle=1.5 colors=(blue);
symbol v=none i=sm;
title "Logit plot";
proc gplot data=problem8;
plot logit*p;
run;


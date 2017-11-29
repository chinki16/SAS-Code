*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	.
Programmer: Chinki Rai
Date Written: 10th Oct 2017;
*Creating the data;
data monthsales; 
retain sumsales 0; 
input month sales@@; 
if not missing(sales) then sumsales=sumsales+sales ;

/* add your line(s) here */    
datalines;    
1 4000 
2 5000 
3 . 
4 5500 
5 5000 
6 6000 
7 6500 
8 4500    
9 5100 
10 5700 
11 6500 
12 7500   
;
run;
 
title 'Data Monthsales';
proc print data=monthsales;
run;
 

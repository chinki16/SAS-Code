*Program name: HW1 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the value variable which is equal to multiplication of shares and price.
Programmer: Chinki Rai
Date Written: 22th Sep 2017;

*Program;
data prob2;
Input ID $ Height /*inches*/ Weight /*in pounds*/ SBP /*systolls BP*/ DBP /*diastolic BP */;
datalines;
001 68 150 110 70 
002 73 240 150 90 
003 62 101 120 80 
;
title "Listing of PROB2"; 
proc print data=prob2; 
run;

*Problem 2 part a,part b ;
data prob2;
Input ID $ Height /*inches*/ Weight /*in pounds*/ SBP /*systolls BP*/ DBP /*diastolic BP */;
WtKg = Weight/2.2 ;  
HtCm=Height*2.54 ;
AveBP=DBP+1/3*(SBP-DBP) ;
HtPolynomial=2*(Height**2) +1.5*(Height **3);	
datalines;
001 68 150 110 70 
002 73 240 150 90 
003 62 101 120 80 
;
title "Creating WtKg,HtCm , AveBP, HtPolynomial" ; 
proc print data=prob2; 
run;


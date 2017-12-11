*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 19th Oct 2017;
*Creating Dataset;
*Data set HEALTH;
data health;
input Subj : $3.
	Height
	Weight;
	Weightkg=(weight/2.2);
	Heightmt=(Height*0.0254);
	BMI=Weightkg/(Heightmt*Heightmt);
	BMIR=round(BMI);
	BMIR_tenth=round(BMI,0.1);
	BMIR_Group=round(BMI,5);
	BMI_Trunc=round(BMI);
datalines;
001 68 155
003 74 250
004 63 110
005 60 95
;
run;
title "Health Data";
proc print data=health;
run;



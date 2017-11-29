*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 12th Oct 2017;

libname mylib 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_04';
proc import out=mylib.blood1 datafile='C:\Computational Statistics\4th Quater\SAS\Homework\Homework_04\blood1.csv' dbms=CSV replace; 
run;
data  lowfemale lowmale ;
	set mylib.blood1;
	where Cholesterol lt 100 and  Cholesterol is not missing ;
	if Gender ='Male' then output lowmale;
	else if Gender='Female' then output lowfemale ;
run;
title "Lowmale";
proc print data=lowmale;
run;

title "Lowfemale ";
proc print data=lowfemale;
run;

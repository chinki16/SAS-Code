*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 12th Oct 2017;

libname mylib 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_04';
proc import out=mylib.mydata datafile='C:\Computational Statistics\4th Quater\SAS\Homework\Homework_04\hosp_Suess.csv' dbms=CSV replace; 
run;
data Monday2002;
	set mylib.mydata;

	where weekday(AdmitDate)=2 and year(AdmitDate)=2002;
	Age=yrdif(AdmitDate,today(),'Actual');
run;
title 'Monday 2002';
proc print data=Monday2002;
run;

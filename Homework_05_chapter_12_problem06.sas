*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 23th Oct 2017;
data study_new;
	set learn.study;
	length  GroupDose $6 ;
	 GroupDose =cats(Group,'-', Dose);
	 Join=Group || '-'|| Dose ;
run;
title "Printing Dataset";
proc print data=study_new;
run;
proc contents data=study_new;
run;

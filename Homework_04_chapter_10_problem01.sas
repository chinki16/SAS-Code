*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Programmer: Chinki Rai
Date Written: 12th Oct 2017;

data blood;
infile 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_04\blood.txt' truncover;
	length Gender $ 6 BloodType $ 2 AgeGroup $ 5;
	input Subject Gender BloodType AgeGroup WBC RBC Chol;
	label Gender = "Gender"
		  BloodType = "Blood Type"
		  AgeGroup = "Age Group"
	      Chol = "Cholesterol";
run;

data subset_A;
	set blood;
	where gender='Female' and BloodType='AB';
	combined =0.001*WBC +RBC;
run;
title "Subset_A";
proc print data=subset_A noobs;
run;

data subset_B;
	set blood;
	combined =0.001*WBC +RBC;
	if gender eq'Female' and BloodType='AB' and combined ge 14;
	run;
	title 'Subset_B';
proc print data=subset_B;
run;


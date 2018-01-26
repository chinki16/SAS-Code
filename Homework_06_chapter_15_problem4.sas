*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 29th Oct 2017;
 libname learn "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets";
 proc Report data=learn.bloodpressure nowd;
 column Gender SBP DBP Hypertensive;
 Define Gender /group width=5;
  Define SBP /display width=5;
 Define DBP/ display width=5;
 Define Hypertensive/ computed "Hypertensive" width=15;
 Compute Hypertensive / character length=6;
 if Gender='F' and (SBP gt 138 or DBP gt 88 ) then Hypertensive='Yes';
		else Hypertensive='No';
 if Gender='M'  and	(SBP gt 140 or DBP gt 90 ) then Hypertensive='Yes';
		else Hypertensive='No';
endcomp;
 run;


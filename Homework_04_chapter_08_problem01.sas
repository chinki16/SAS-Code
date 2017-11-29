*Program name: Homework 04 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Use of Do loop and conditional statements	.
Programmer: Chinki Rai
Date Written: 10th Oct 2017;

*Creating data set;
 data vitals;
 input ID : 3.
 Age
 Pulse
 SBP
 DBP;
 label SBP = "Systolic Blood Pressure"
 DBP = "Diastolic Blood Pressure";
 datalines;
 001 23 68 120 80
 002 55 72 188 96
 003 78 82 200 100
 004 18 58 110 70
 005 43 52 120 82
 006 37 74 150 98
 007 . 82 140 100
 ; 
 run;
*Creating dataset newvitals;
data new_vitals;
 set vitals;
 length pulsegroup $6;
 length SBPgroup $6;
 *Age has missing values so deleting it;
 if missing(Age) then delete;
 if Age < 50 then do;
 	if Pulse < 70 then pulsegroup='Low';
 		else pulsegroup='High';
	if SBP < 130 then SBPgroup='Low';
		else SBPgroup='High';
		end;
else if Age >- 50 then do;
	if Pulse < 74 then pulsegroup='Low';
 		else pulsegroup='High';
	if SBP < 140 then SBPgroup='Low';
		else SBPgroup='High';
		end;

run;
title 'new_vitals';
proc print data=new_vitals;
run;



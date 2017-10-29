*Program name: HW2 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the dataset using column input
Programmer: Chinki Rai
Date Written: 26th Sep 2017;

*Problem 7;
title "Cache dataset using column input";
data cache;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\geocaching.txt";
input Name $ 1-20
	LongDeg  21-22
	LongMin  23-28
	LatDeg   29-30
	LatMin   31-36
;
run;
proc print data=cache;
run;



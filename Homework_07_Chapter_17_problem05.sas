*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 09 Nov 2017;
libname learn 'C:\Users\chink\Google Drive\Computational Statistics\4th Quater\SAS\SAS_DataSets';
title 'Printing variables ';
proc format;
value rank low-70='Low to 70'
		   71 - High='71 and higher';
run;
proc freq data=learn.college;    
tables Scholarship*ClassRank;    
format ClassRank rank.; 
run;
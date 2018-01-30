/* Problem01*/
*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 09 Nov 2017;
libname learn 'C:\Users\chink\Google Drive\Computational Statistics\4th Quater\SAS\SAS_DataSets';
title 'Printing out variables ';
proc means data=learn.college mean median min max n nmiss maxdec=2;
var GPA ClassRank;
run;



/* Problem02*/
*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 09 Nov 2017;
libname learn 'C:\Users\chink\Google Drive\Computational Statistics\4th Quater\SAS\SAS_DataSets';
title 'Printing out variables ';
proc format; 
value $yesno  'Y','1' = 'Yes'
			  'N','0' = 'No' 
			    ' '   = 'Not Given'; 
value $size   'S' = 'Small' 
			  'M' = 'Medium' 
			  'L' = 'Large' 
		      ' ' = 'Missing'; 
value $gender 'F' = 'Female' 
			  'M' = 'Male' 
			  ' ' = 'Not Given'; 
run; 
/*summary statistics of the dataset by by statement*/
proc sort data=learn.college;
by Gender SchoolSize;
run;

proc means data=learn.college mean median min max n nmiss maxdec=2;
by gender SchoolSize;
format Gender SchoolSize;
var GPA ClassRank;
run;

/*summary statistics of the dataset by class statement*/
proc means data=learn.college mean median min max n nmiss maxdec=2;
class gender SchoolSize;
format Gender SchoolSize;
var GPA ClassRank;
run;




/***Problem-03***/
proc sort data=learn.college;
by SchoolSize;
run;
title 'Statistics of data using by statement';
proc means data=learn.college n mean median min max maxdec=2;
by schoolsize ;
var GPA ClassRank;
run;

title 'Statistics of data using class statement';
proc means data=learn.college n mean median min max maxdec=2;
class schoolsize ;
var GPA ClassRank;
run;


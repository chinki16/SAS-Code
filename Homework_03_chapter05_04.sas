*Program name: HW3 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose: Creating permanent dataset and format. Exploring other options in format
Programmer: Chinki Rai
Date Written: 03rd Oct 2017;
libname hw03 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_03';
data hw03.voter;
 input Age Party : $1. (Ques1-Ques4)($1.+ 1);
 datalines;
 23 D 1 1 2 2
 45 R 5 5 4 1
 67 D 2 4 3 3
 39 R 4 4 4 4
 19 D 2 1 2 1
 75 D 3 3 2 3
 57 R 4 3 4 4
 ; 
run;
*Creating permanent formate;
libname fhw3 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_03';
proc format library=fhw3;
value Age 0-30="0-30"
		31-50 ="31-50"
		51-70="51-70"
		71-high ="71+" ;
value $Party 'D'='Democrate'
		   'R'='Republican';
value $five '1'='Strongly Disagree'
            '2'='Disagree'
            '3'='No Opinion'
            '4'='Agree'
            '5'='Strongly Agree';
            run;
*Adding label and format statement in the data step;
		  libname hw03 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_03';
		  libname fhw3 'C:\Computational Statistics\4th Quater\SAS\Homework\Homework_03';
		  options fmtsearch =(fhw3);
		  data hw03.voter;
		  input Age Party : $1. (Ques1-Ques4)($1.+ 1);
 label Ques1 = 'The president is doing a good job' 
       Ques2 = 'Congress is doing a good job' 
       Ques3 = 'Taxes are too high' 
       Ques4 = 'Government should cut spending';
format Age age.
       Party $party.
       Ques1-Ques4 $five.;
 datalines;
 23 D 1 1 2 2
 45 R 5 5 4 1
 67 D 2 4 3 3
 39 R 4 4 4 4
 19 D 2 1 2 1
 75 D 3 3 2 3
 57 R 4 3 4 4
 ; 
run;

title "Data set voter";
proc contents data=hw03.voter varnum;
run;

title "Format definitions";
proc format library=fhw3 fmtlib;
run;

*Program name: HW2 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Using if statement.
Programmer: Chinki Rai
Date Written: 26th Sep 2017;
 data school;      
input Age Quiz : $1. Midterm Final; 
if Age=12 then grade=6;
else if Age=13 then grade=8; 
datalines;   
12 A 92 95   
12 B 88 88   
13 C 78 75   
13 A 92 93   
12 F 55 62   
13 B 88 82   
;
run;
proc print data=school;
run;
data school;      
input Age Quiz : $1. Midterm Final; 
if Quiz=A then Quizgrade=95;
else if Quiz=B then Quizgrade=85;
else if Quiz=C then Quizgrade=75;
else if Quiz=D then Quizgrade=70;
else if Quiz=F then Quizgrade=65; 
datalines;   
12 A 92 95   
12 B 88 88   
13 C 78 75   
13 A 92 93   
12 F 55 62   
13 B 88 82   
;
run;

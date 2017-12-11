*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 23th Oct 2017;
*Data set MIXED;
data mixed;
   input Name & $20. ID;
datalines;
Daniel Fields  123
Patrice Helms  233
Thomas chien  998
;

Data letter;
set mixed;
namelow=LOWCASE(Name);
nameprop=PROPCASE(Name);
First = lowcase(scan(Name,1,' ')); 
Last = lowcase(scan(Name,2,' ')); 
*converting entire word into lower case;
substr(First,1,1) = upcase(substr(First,1,1)); 
*converting entire word into upper case;
substr(Last,1,1) = upcase(substr(Last,1,1)); 
*converting entire word into upper case;
NameHard = catx(' ',First,Last); 
run;
title "Printing dataset";
Proc print data=letter;
run;



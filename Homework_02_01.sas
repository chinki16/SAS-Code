*Program name: HW2 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the score data file and calculating average.
Programmer: Chinki Rai
Date Written: 26th Sep 2017;

*Reading the data frome score text and storing in score;
*Part a of problem01;
data score;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\scores.txt";
input Gender $1. English History Maths Science;
Average=(English+History+Maths+Science)/4;
run;
title "Printing score dataset";
proc print data=score;
run;

*Part b of problem01;
title "Average of subjects";
data score;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\scores.txt";
input Gender $ English History Maths Science;
Average=(English+History+Maths+Science)/4;
run;
proc print Average;
run;

*Part c of the problem;
title "Printing the content of the dataset";
proc print data=score;
run;

*Program name: HW2 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the dataset political and conputing frequecies.
Programmer: Chinki Rai
Date Written: 26th Sep 2017;

* Reading the data from CSV source file and storing in political;
*Part a of problem;
Data vote;
infile 'C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\political.csv' dsd;
input state $ party $ Age ;
run;
title "Vote dataset";
proc print data=vote;
run;

*Part b of problem;
title "A procedure to list the observations in this data set";
proc print data=vote;
run;

*Part c of problem;
title " A procedure to compute frequencies for Part";
proc freq data=vote;
table party;
run;

*Program name: HW1 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the value variable which is equal to multiplication of shares and price.
Programmer: Chinki Rai
Date Written: 21th Sep 2017;

* Reading the data from source file and storing in portfolio;

data portfolio;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\stocks.txt";
input symbol $ price shares;
run;

* Computing values;
data portfolio;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\stocks.txt";
input symbol $ price shares;
title "Computing values" ;
value = price* shares;
run;

*  computing the average price and the average number of shares of your stocks;

data portfolio;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\stocks.txt";
input symbol $ price shares;
title "Summary Statistics";
proc means data=portfolio;
var price shares;
run;

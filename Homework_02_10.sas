*Program name: HW2 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the dataset and using formatting option.
Programmer: Chinki Rai
Date Written: 26th Sep 2017;

*Problem 10;
data stock;
infile "C:\Computational Statistics\4th Quater\SAS\SAS_DataSets\stockprices.txt";
input @1 Stock $3.
@5 PurDate mmddyy10.
@15 PurPrice dollar6.
@21 Number  4.
@25 SellDate mmddyy10.
@35 SellPrice dollar6.
;
run;

proc print data=stock;
format PurDate mmddyy10.
PurPrice dollar6.1
SellDate mmddyy10.
SellPrice dollar6.1
;
run;




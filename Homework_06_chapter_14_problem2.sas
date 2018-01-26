*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 29th Oct 2017;
libname dataset 'C:\Computational Statistics\4th Quater\SAS\SAS_DataSets';
proc sort data=dataset.Sales out=Salessort;
by Region Totalsales;
run;

title "Sales Figures from the SALES Data Set";

Proc print data=Salessort label;
by Region;
id Region;
Var Quantity TotalSales;
sum Quantity TotalSales;
label TotalSales= "Total Sales";
run;


*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 29th Oct 2017;
/*Used Export option to export dataset into SAS work library*/

title "Five observations of blood dataset";
proc print data=work.dataset1 (obs=5) noobs;
var Subject Gender BloodType;
run;

*Program name: Homework 06 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 29th Oct 2017;
/*Used Import option to export dataset into SAS work library*/

title "Five observations of blood dataset";
proc report data=work.dataset1(obs=5) nowd ;
column  Subject WBC RBC ;
define subject / display "Subject Number" width=7;
define WBC / "White Blood Cells" width=6 format=comma6.0;
 define RBC / "Red Blood Cells" width=5 format=5.2;
run;


*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 19th Oct 2017;

*Data set PSYCH;
data psych;
	input ID : $3. Ques1-Ques10 Score1-Score5;

datalines;
001 1 3 2 4 5 4 3 4 5 4 90 92 93 90 88
002 3 3 . . 3 4 5 5 1 . 95 . . 86 85
003 . . . . 5 5 4 4 3 3 88 87 86 85 84
004 5 3 4 5 . 5 4 3 3 . 78 78 82 84 .
005 5 4 3 2 1 1 2 3 4 5 92 93 94 95 99
;
data Evaluate;
set PSYCH;
scoreAve=mean(Largest(1,of Score1-Score5),Largest(2,of Score1-Score5),Largest(3,of Score1-Score5));
if n(of Ques1-Ques10) ge 7 then 
QuesAve = mean(of Ques1-Ques10);
Composit = ScoreAve + 10*QuesAve;
keep ID ScoreAve QuesAve Composit; 
run;

title "Evaluate";
proc print data=Evaluate;
run;


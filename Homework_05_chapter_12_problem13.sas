*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 23th Oct 2017;
*Data set SOCIAL;

data social1;
	input SS1 $11.;

datalines;
123-45-6789
001-34-9876
007-77-6767
102-43-9182
;

*Data set SOCIAL2;

data social2;
	input SS2 $11.;

datalines;
123-45-6789
001-43-9876
007-77-6767
485-46-1182
102-43-9188
;
proc sql;
	create table social as
	select *
	from social1, social2;
quit;

data exact within25;
	set social;
	if ss1 eq ss2 then output exact;
	else if spedis(ss1,ss2) le 25 and not missing(ss1) and not missing(ss2) then output within25; /*Spelling distance */
run;

title "Exact dataset";
proc print data=exact;
run;

title "Within25 dataset";
proc print data=within25;
run;


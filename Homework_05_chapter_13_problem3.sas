*Program name: Homework 05 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.	
Programmer: Chinki Rai
Date Written: 25th Oct 2017;
libname dataset 'C:\Computational Statistics\4th Quater\SAS\SAS_DataSets';
data survey1;
	set dataset.survey1;
	array Ques{5} $ Q1-Q5;
	do i=1 to 5;
		Ques{i}=translate(Ques{i},'54321','12345');
	end;
	drop i;
run;

title " Survey1";
proc print data=survey1;
run;

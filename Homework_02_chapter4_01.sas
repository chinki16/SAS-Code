*Program name: HW1 is stored in C:\Computational Statistics\4th Quater\SAS\Homework.
Purpose:  Creating the permanent SAS Dataset.
Programmer: Chinki Rai
Date Written: 27th Sep 2017;

* Creating library and storing data permanent;
libname learn "C:\Computational Statistics\4th Quater\SAS";
data learn.perm;
input id : $3.
Gender : $1.
DOB : mmddyy10.
Height
Weight;

label DOB='Date of Birth'
Height='Height in inches'
Weight ='Weight in pounds'
formate DOB data9.;
datalines ;
 001 M 10/21/1946 68 150
 002 F 5/26/1950 63 122
 003 M 5/11/1981 72 175
  004 M 7/4/1983 70 128 
  005 F 12/25/2005 30 40 
  ;

title "The Descriptor portion of Data";
proc contents data=learn.perm;
run;


#!/bin/bash -x

Day 6 Repetitions & Functions
Mentors CodInClub
•
Yesterday
This Section has following contents
1: Repetitions and
2: Functions
TQ Day6 Video01 For Loop Repetitions
YouTube video   ‪8 minutes‬
TQ Day6 Video02 While Loop
YouTube video   ‪5 minutes‬
TQ Day6 Video03 Functions 1
YouTube video   ‪4 minutes‬
TQ Day6 Video04 Functions 2
YouTube video   ‪14 minutes‬
Day6 Doc01 for Loop Repetitions.pdf
PDF
Day6 Doc02 while Loop Repetitions.pdf
PDF
Day6 Doc03 Functions.pdf
PDF
calculateEmployeeSalary.sh
Text
forLoop.sh
Text
calculateEmployeeSalaryWithFunction.sh
Text
functionDemo.sh
Text
calculateEmployeeSalaryWithWhile.sh
Text
whileLoop.sh
Text
Class comments

perHourSalary=20;
workingHour=0;
totalSalary=0;
totalWorkingHour=0;
day=1;
while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		workingHour=0;
		;;

		1)
		#echo "Employee is present";
		workingHour=8;
		;;

		2)
		#echo "Employee is working as part time";
		workingHour=4;
		;;
	esac
	totalWorkingHour=$(($totalWorkingHour + $workingHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $workingHour));
		break;
	fi
	salary=$(($perHourSalary * $workingHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";


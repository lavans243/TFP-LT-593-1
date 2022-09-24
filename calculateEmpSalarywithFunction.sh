#!/bin/bash -x

rday
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

function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
			;;

		1)
			workingHour=8;
			;;
		2)
			workingHour=4;
			;;
	esac;
	echo $workingHour;
}

perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	wHour=$(calculateWorkingHour $((RANDOM%3)));
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $wHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";


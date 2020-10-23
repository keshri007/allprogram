##!/bin/bash -x
echo "Enter the year in number"
read year
a=$(($year%100))
b=$(($year%400))
c=$(($year%4))

if [ $c -eq 0 -a $b -eq 0 -a $a -eq 0 ]
then
	echo "This is a leap year"
else
	if [ $c -eq 0 -a $b -ne 0 -a $a -ne 0 ]
	then
		echo "This is a leap year"
	else
		if [ $c -eq 0 -a $b -eq 0 ]
		then
			echo "This is a leap year"
		else
			if [ $a -ne 0 -a $b -ne 0 -a $c -eq 0 ]
			then
				echo "This is not a leap year"
			else
				echo "The is not a leap year"
			fi
		fi
	fi
fi

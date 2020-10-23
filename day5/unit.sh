##!/bin/bash -x
echo " Enter 1 for feet to inch and 2 for inch to feet"
read a
if [ $a -eq 1 ]
then
	echo "Enter the number in feet"
	read feet
	awk "BEGIN {print $feet*12}"

elif [ $a -eq 2 ]
then
	echo "Enter the number in inch"
	read inch
	awk "BEGIN {print $inch/12}"

else
	echo "invalid input"
fi

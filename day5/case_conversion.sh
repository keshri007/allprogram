##!/bin/bash -x
echo "1 for feet to inch, 2 for feet to meter, 3 for inch to feet, 4 for meter to feet"
read a
case $a in
1)	echo "enter value in feet"
	read b
	awk "BEGIN{print $b*12}";;

2)	echo "enter value in feet"
	read b
	awk "BEGIN{print $b*0.3048}";;

3)	echo "enter value in inch"
	read b
	awk "BEGIN{print $b*0.0833333}";;

4)	echo "enter value in meter"
	read b
	awk "BEGIN{print $b*3.28084}";;

*)echo "invalid input";;

esac

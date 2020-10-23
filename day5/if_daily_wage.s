#!/bin/bash -x
pre=1;
ran=$((RANDOM%2));
if [ $pre -eq $ran ]
then
	echo "Present"
	rate=20
	wh=8
	salary=$((rate*wh))
	echo $salary
else
	echo "Absent"
	echo 0
fi

##!/bin/bash -x
preft=1;
prept=2
ran=$((RANDOM%3));
if [ $ran -eq $preft ]
then
	rate=20
	wh=8
elif [ $ran -eq $prept ]
then
	rate=10
	wh=12
else
	salary=0
fi

salary=$((rate*wh))
echo $salary

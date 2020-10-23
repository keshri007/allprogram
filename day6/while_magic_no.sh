##!/bin/bash -x
min=1
max=100
while [ "$min" -le $max ]
do
	mid=$(((max+min)/2))
	echo "Hurrey...!! your number is $mid"
	echo "Not your number then"
	echo "Press 1 if your number is less than $mid"
	echo "Press 2 if your number is more than $mid"
	read r
	if [ $r -eq 1 ]
	then
		max=$((mid-1))
	elif [ $r -eq 2 ]
	then
		min=$((mid+1))
	else
		echo "Invalid Input"
	fi
done
echo "your number is $max"


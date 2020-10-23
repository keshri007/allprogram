##!/bin/bash -x
sum=0
for((i=1;i<=5;i++))
do
	b=$((RANDOM%100))
	if [ $b -gt 9 ]
	then
		sum=$((sum+b))
		echo $b
		echo $sum
	else
		i=$((i-1))
	fi
done
awk "BEGIN {print $sum/($i-1)}"



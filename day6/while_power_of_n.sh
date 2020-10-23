##!/bin/bash -x
echo "Enter any number"
read n
value=1
while [ "$value" -le $n ]
do
	result=$((2**value))
	echo $result
	value=$(($value+1))
done

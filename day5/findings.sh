##!/bin/bash -x
echo "enter any number"
read input

while [ $input -gt 0 ]
do
	a=$(($input % 10))
	echo $a
	input=$(($input /10 ))
done

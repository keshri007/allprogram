##!/bin/bash -x
echo "Enter 3 intergers"
for((i=0;i<3;i++))
do
	read arr[$i]
done
echo "your intered numbers are ${arr[@]}"
result=0
for((i=0;i<3;i++))
do
	result=$(($result+${arr[i]}))
done

if [ $result -eq 0 ]
then
	echo "Sum of three number adds to ZERO"
else
	echo "Sume of three number does not add to ZERO"
fi


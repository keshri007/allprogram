##!/bin/bash -x
for((i=0;i<10;i++))
do
	arr[i]=$((RANDOM%900+100))
done
echo "Here are 10 random 3 digit number"

for((i=0;i<${#arr[@]};i++))
do
	echo ${arr[i]}
done

for((i=0;i<10;i++))
do
	for((j=i+1;j<10;j++))
	do
		if [ ${arr[i]} -lt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo "after sorting"
for((i=0;i<${#arr[@]};i++))
do
	echo ${arr[i]}
done
large2=${arr[1]}
ss=$((${#arr[@]}-2))
small2=${arr[ss]}
echo "2nd largest number $large2"
echo "2nd smallest number $small2"

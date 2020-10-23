##!/bin/bash -x
declare -A ar
ar=([Head]=0 [Tail]=0)
for((i=1;i<10;i++))
do
 	value=$((RANDOM%2))
	if [ $value -eq 0 ]
	then
	((ar[Head]++))
	else
	((ar[Tail]++))
	fi
done

echo ${ar[@]}
echo ${!ar[@]}

##!/bin/bash -x
for((i=1;i<10;i++))
do
	a=$((i-1))
	value[a]=$((11*i))
done
echo ${value[@]}

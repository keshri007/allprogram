##!/bin/bash -x
echo "Enter the number for which you want to find the factors"
read n
echo "Prime factors are:"
for ((i=2;i<=$n*$n;i++))
do
	while [ $((n%i)) == 0 ]
	do
		echo $i
		n=$((n/$i))
	done
done

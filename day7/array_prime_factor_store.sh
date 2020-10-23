##!/bin/bash -x
echo "Enter the number for which you want to find the factors"
read n
echo "Prime factors of $n are:"
for ((i=2;i<=$n*$n;i++))
do
		  a=$i
        while [ $((n%a)) == 0 ]
        do
					 arr[i]=$a
                n=$((n/$a))
        done
done
echo ${arr[@]}

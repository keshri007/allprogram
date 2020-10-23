##!/bin/bash -x
echo "Enter the number"
read n
for (( i=1;i<=n;i++ ))
do
	result=$((2**i))
	echo $result
done

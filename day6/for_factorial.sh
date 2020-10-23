##!/bin/bash -x
echo "Enter the number whose factorial is to be found"
read f
res=1
for((i=2;i<=f;i++))
do
	res=$((res*i))
done

echo "factorial of number is $res"

##!/bin/bash -x
echo "Enter the number to be determined as prime or not"
read n
t=0
for ((i=2;i<=n/2;i++))
do
	a=$((n%i))
	if [ $a -eq 0 ]
	then
		t=$((t+1))
	fi
done
if [ $t -gt 0 ]
then
	echo "Number is not prime"
else
	echo "Number is prime"
fi

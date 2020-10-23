##!/bin/bash -x
echo "enter the lower limit"
read a
echo "enter higher limit"
read b
if [ $a -eq 1 ]
then
	echo $a
	a=$((a+1))
	if [ $b -ge 2 ]
	then
		echo $a
		a=$((a+1))
	fi
fi
if [ $a -eq 2 ]
then
	echo $a
fi
if [ $[a%2] -eq 0 ]
then
	echo $a
fi
for ((i=a;i<=b;i++))
do
		f=1
		for ((j=2;j*j<=i;j++))
		do
			if [ $[i%j] -eq 0 ]
			then
				f=0
				break;
			fi
		done		
		if [ $f -eq 1 ]
		then
			echo $i
		fi
done

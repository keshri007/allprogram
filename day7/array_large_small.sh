##!/bin/bash -x
n=1
for((i=0;i<=9;i++))
do
	value=$((RANDOM%900+100))
	array[$i]=$value
done

echo ${array[@]}

lar=${array[0]}
seclar=0

for ((i=1;i<${#array[@]};i++))
do
	if [ ${array[i]} -gt $lar ]
	then
		seclar=$lar
		lar=${array[i]}
	elif [ ${array[i]} -gt $seclar ]
	then
		seclar=${array[i]}
	fi
done
echo "Second largest $seclar"

small=${array[0]}
secsmall=0

for ((i=1;i<${#array[@]};i++))
do
	if [ ${array[i]} -lt $small ]
	then
		secsmall=$small
		small=${array[i]}
	elif [ ${array[i]} -lt $secsmall ]
	then
		secsmall=${array[i]}
	fi
done
echo "Second smallest $secsmall"

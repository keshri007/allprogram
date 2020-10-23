##!/bin/bash -x
echo "Enter 1st Number"
read a
echo "Enter 2nd Number"
read b
echo "Enter 3rd Number"
read c
output1=$((a+(b*c)))
echo 1. $output1
output2=$(((a%b)+c))
echo 3. $output2
output3=$((c+(a/b)))
echo 3. $output3
output4=$(((a*b)+c))
echo 4. $output4
echo "max"
if [ $output1 -gt $output2 -a $output1 -gt $output3 -a $output1 -gt $output4 ]
then
	echo $output1
elif [ $output2 -gt $output1 -a $output2 -gt $output3 -a $output2 -gt $output4 ]
then
	echo $output2
elif [ $output3 -gt $output1 -a $output3 -gt $output2 -a $output3 -gt $output4 ]
then
	echo $output3
else
	echo $output4
fi
echo "min"
if [ $output1 -lt $output2 -a $output1 -lt $output3 -a $output1 -lt $output4 ]
then
	echo $output1
elif [ $output2 -lt $output1 -a $output2 -lt $output3 -a $output2 -lt $output4 ]
then
	echo $output2
elif [ $output3 -lt $output1 -a $output3 -lt $output2 -a $output3 -lt $output4 ]
then
	echo $output3
else
	echo $output4
fi

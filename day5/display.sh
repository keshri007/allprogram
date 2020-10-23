#!/bin/bash -x
echo "Enter number in multiple of 10 having MSB unity"
read a
if [ $a -eq 1 ]
then
echo "Unity"
elif [ $a -eq 10 ]
then
echo "Ten"
elif [ $a -eq 100 ]
then
echo "Hundred"
elif [ $a -eq 1000 ]
then
echo "Thousand"
else
echo "Out of Range"
fi

#!/bin/bash -x
echo "Enter the no. between 1 to 7"
read a
if [ $a -eq 1 ]
then
    echo "Sunday"

elif [ $a -eq 2 ]
then
    echo "Monday"

elif [ $a -eq 3 ]
then
    echo "Tuesday"

elif [ $a -eq 4 ]
then
    echo "Wednesday"

elif [ $a -eq 5 ]
then
    echo "Thursday"

elif [ $a -eq 6 ]
then
    echo "Friday"
else
    echo "Saturday"
fi

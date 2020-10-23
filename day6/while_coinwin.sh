##!/bin/bash -x
h=0
t=0
while [ $h -lt 11 -a $t -lt 11 ]
do
	a=$(($RANDOM%2))

	if [ $a -eq 0 ]
	then
		h=$(($h+1))
	else
		t=$(($t+1))
	fi;

done
echo "head cound = $h"
echo "tail count = $t"
if [ $h -gt $t ]
then
echo "head is the winner"
else
echo "tail is the winner"
fi

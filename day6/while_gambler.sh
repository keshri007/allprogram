##!/bin/bash -x
start=100
w=0
nb=0
while [ "$start" -gt 0 -a "$start" -lt 200 ]
do
	ran=$((RANDOM%2))
	if [ $ran -eq 0 ]
	then
		start=$((start+2))
		w=$((w+1))
	else
		start=$((start-2))
	fi
	nb=$((nb+1))
done
echo "no of times bets made $nb"
echo "no of times won $w"

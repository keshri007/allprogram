##!/bin/bash -x
declare -A dice
for((i=1;i<=6;i++))
do
	dice+=([$i]=0)
done

valid=1
r=0

while [ $valid -gt 0 ]
do
	((r++))
	roll=$((RANDOM%6+1))
	echo "$r Roll is: $roll "
	((dice[$roll]++))
	if [ ${dice[$roll]} -eq 11 ]
	then
		break
	fi
done
echo -e "Dice_value\tcounting"

for((i=1;i<=6;i++))
do
	echo -e "$i\t\t${dice[$i]}"
done

echo "Maximum time get: $roll"
min=${dice[1]}
roll=1

for((i=2;i<=6;i++))
do
	if [ ${dice[$i]} -lt $min ]
	then
		min=${dice[$i]}
		roll=$i
	fi
done
echo "Minimum times get : $roll"

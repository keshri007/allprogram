##!/bin/bash -x
a=$((RANDOM%900+100)) 
b=$((RANDOM%900+100))
c=$((RANDOM%900+100))
d=$((RANDOM%900+100))
e=$((RANDOM%900+100))
echo $a" "$b" "$c" "$d" "$e
echo "max"
if [ $a -gt $b -a $a -gt $c -a $a -gt $d -a $a -gt $e ]
then
	echo $a
else
	if [ $b -gt $a -a $b -gt $c -a $b -gt $d -a $b -gt $e  ]
	then
		echo $b
	else
		if [ $c -gt $b -a $c -gt $a -a $c -gt $d -a $c -gt $e ]
		then
			echo $c
		else
			if [ $d -gt $b -a $d -gt $c -a $d -gt $a -a $d -gt $e ]
			then
				echo $d
			else
				echo $e
			fi
		fi
	fi
fi
echo "min"
if [ $a -lt $b -a $a -lt $c -a $a -lt $d -a $a -lt $e ]
then
	echo $a
else
	if [ $b -lt $a -a $b -lt $c -a $b -lt $d -a $b -lt $e  ]
	then
		echo $b
	else
		if [ $c -lt $b -a $c -lt $a -a $c -lt $d -a $c -lt $e ]
		then
			echo $c
		else
			if [ $d -lt $b -a $d -lt $c -a $d -lt $a -a $d -lt $e ]
			then
				echo $d
			else
				echo $e
			fi
		fi
	fi
fi

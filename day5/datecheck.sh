##!/bin/bash -x
echo "Enter month in number"
read m

if [ $m -gt 2 -a $m -lt 7 ]
then

	echo "Enter date"
	read d

	if [ $m -eq 3 -o $m -eq 6 ]
	then
		if [ $m -eq 3 -a $d -gt 20 -a $d -lt 32 ]
		then
			echo "True"
		else
			if [ $m -eq 6 -a $d -lt 20 -a $d -gt 0 ]
			then
				echo "True"
			else
				echo "False"
			fi
		fi

	else
		if [ $m -eq 4 -a $d -gt 0 -a $d -lt 31 ]
		then
			echo "True"
		else
			if [ $m -eq 5 -a $d -gt 0 -a $d -lt 32 ]
			then
				echo "True"
			else
				echo "False"
			fi
		fi
	fi

else
	echo "False"
fi

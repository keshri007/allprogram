##!/bin/bash -x
#conv(){
#case $c in
#1)		echo "Enter temperature in degree"
#		read cd
#		if [ $cd -ge 0 -a $cd -le 100 ]
#		then
#			degf=`awk 'BEGIN{print '$cd'*1.8+32}'`
#			echo "Temperature in Fahreheit $degf"
#		else
#			echo "Enter the value in between 0 to 100"
#		fi
#;;
#2)		echo "Enter temperature in fahrenheit"
#		read cd
#		if [ $cd -ge 32 -a $cd -le 212 ]
#		then
#			degc=`awk 'BEGIN{print ('$cd'-32)*0.5555}'`
#			echo "Temperature in degree celcius $degc"
#		else
#			echo "Enter the value in between 32 to 212"
#		fi
#;;
#*) echo "Please select appropriate number";;
#esac
#}
convtof(){
	echo "Enter the tempertaure in Celcius"
	read ct
	if [ $ct -ge 0 -a $ct -le 100 ]
	then
		degf=`awk 'BEGIN{print '$ct'*1.8+32}'`
		echo "Temerature in Fahrenheit $degf"
	else
		echo "Enter the number in the range of 0 to 100"
	fi
}

convtoc(){
	echo "Enter temperature in Fahrenheit"
	read ft
	if [ $ft -ge 32 -a $ft -le 212 ]
	then
		degc=`awk 'BEGIN{print ('$ft'-32)*0.5555}'`
		echo "Temperature in Celcius $degc"
	else
		echo "Enter temperature in the range of 32 to 212"
	fi
}

echo "Press 1 to covert degree to Fahrenheit"
echo "Press 2 to covert Fahrenheit to degree"
read c
case $c in
1)	convtof;;
2)	convtoc;;
*) echo "Enter the number 1 or 2 based on your choice of conversion"
;;
esac

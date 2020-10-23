##!/bin/bash -x
pal(){
	n=$1
	num=$n
	rev=0
	while [ $num -ne 0 ]
	do
		d=$((num%10))
		rev=$(((rev*10)+d))
		num=$((num/10))
	done

	if [ $n -eq $rev ]
	then
		echo "Number is Palindrome"
	else
		echo "Number is not palindrome"
	fi
}
echo "Enter any number"
read num
pal $num


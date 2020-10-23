##!/bin/bash -x
isPrime(){
	n=$num
	t=0
	for ((i=2;i<=n/2;i++))
	do
        a=$((n%i))
        if [ $a -eq 0 ]
        then
                t=$((t+1))
        fi
	done
	if [ $t -gt 0 ]
	then
        echo "0"						#"Number is not prime"
	else
        echo "1"						#"Number is prime"
	fi
}
isPal(){
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
                echo	"1"			#"Number is Palindrome"
        else
                echo "0"			#"Number is not palindrome"
        fi
}
echo "Enter any number "
read num
prime=$(isPrime $num)
if [ $prime -eq  0 ]
then
	echo "Number is not prime"
else
	echo "Number is prime"
fi
palindrome=$(isPal $num)
if [ $palindrome -eq 1 ]
then
	echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi
if [ $palindrome -eq 1 ]
then
	if [ $palindrome -eq  $prime ]
	then 
		echo "Palindrome number is also prime"
	else
		echo "Palindrome number is not prime"
	fi
else
	echo "Number is not palindrome only so no need check.....!!!"
fi

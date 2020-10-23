##!/bin/bash -x
a=$(($RANDOM))
echo "Random number in the range of 1 to 32768 = $a"
single_digit=$((RANDOM%2))
echo "Single digit number is $single_digit"


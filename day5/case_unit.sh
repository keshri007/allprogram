#!/bin/bash -x
echo "Enter number in 10 to the power n where n start form 0"
read a
case $a in
1)echo "unit";;
10)echo "ten";;
100)echo "hundred";;
1000)echo "thousand";;
*)echo "overflow";;
esac

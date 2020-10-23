##!/bin/bash -x
echo "Enter any number"
read a
case $a in
1)echo "one" ;;
2)echo "two" ;;
3)echo "three";;
4)echo "four";;
5)echo "five";;
6)echo "six";;
*)echo "out of range";;
esac

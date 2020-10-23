#!/bin/bash -x
echo "enter the week num"
read a
case $a in
1) echo "Monday" ;;
2) echo "Tuesday" ;;
3) echo "Wednesday" ;;
4) echo "Thursday" ;;
5) echo "Friday" ;;
6) echo "Saterday" ;;
7) echo "Sunday" ;;
*) echo "no such day" ;;
esac

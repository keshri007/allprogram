##!/bin/bash -x
declare -A born92
declare -A born93
for((i=1;i<=12;i++))
do
	born92[$i]=0
	born93[$i]=0
done
for((i=1;i<=50;i++))
do
	roll=$((RANDOM%12+1)) 
	((born92[$roll]++)) 
	roll=$((RANDOM%12+1))
	((born93[$roll]++))
done
echo "People born in different month of year 1992 :"
for((i=1;i<=12;i++))
do
	echo -n "${born92[$i]} "
done
echo ""
echo "People born in different month of year 1993 :"
for((i=1;i<=12;i++))
do
	echo -n "${born93[$i]} "
done
echo ""
echo -e "Month\t\t1992\t\t1993"

for((i=1;i<=12;i++))
do
	case $i in
	1) m="Jan";;
	2) m="Feb";;
	3) m="Mar";;
	4) m="Apr";;
	5) m="May";;
	6) m="Jun";;
	7) m="Jul";;
	8) m="Aug";;
	9) m="Sept";;
	10) m="Oct";;
	11) m="Nov";;
	12) m="Dec";;
	esac
	echo -e "$m[$i]\t\t${born92[$i]}\t\t${born93[$i]}"
done

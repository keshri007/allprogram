##!/bin/bash -x
echo "Enter no of terms"
read n
result=0
for (( i=1;i<=n;i++))
do
	a=`awk 'BEGIN{print 1/'$i'}'`
	result=`awk 'BEGIN{print '$result'+'$a'}'`
	echo $i $a $result
done

















#echo "enter any number"
#read n
#result=1
#for(( i=1;i<=n;i++ ))
#do
#awk "{print 1/$i}"
#done

#result=`awk '{print '$(($result+$((1/$i))))'}'`
#`awk 'BEGIN{print $result}'`
#done

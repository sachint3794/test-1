#!/bin/bash
echo "enter the number of sequence"
read n
echo "the fibonaci series are"
a=0
b=1
sum=0
echo "$a"
echo "$b"
count=2
while [ $count -lt $n ]
do
	sum=`expr $a + $b`
	a=$b
	b=$sum
	count=`expr $count + 1`
	echo $b
done

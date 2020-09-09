#!/bin/bash
function factnum() {
	num=$1
	fact=1
	while [ $num -gt 0 ] 
	do
		fact=`expr $fact \* $num`
		num=`expr $num - 1`
		echo "fact of $1 is $fact"
	done
}
for i in $*
do 
factnum $i
done

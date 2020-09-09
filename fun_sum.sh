#!/bin/bash
function addnum () {
	sum=`expr $1 + $2 + $3`
	echo "sum of $1,$2 and $3 is $sum"
}
num1=4
num2=5
num3=10
addnum $num1 $num2 $num3

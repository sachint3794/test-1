#!/bin/bash

fact=$1

factsum=1

while [ $fact -gt 1 ]
do
factsum=`expr $factsum \* $fact`
fact=`expr $fact - 1`
done
   echo "the factorial of $1 is $factsum"

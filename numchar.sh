#!/bin/bash
num=1

while read line
do
char=`echo $line | wc -c`
echo "$num:$char"
num=`expr $num + 1`
done < $1

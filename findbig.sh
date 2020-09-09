#!/bin/bash
big=$1
for var in $*
do 
   if [ $big -lt $var ];then
big=$var
fi
done
echo "big is  $big"



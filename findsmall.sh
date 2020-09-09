#!/bin/bash
small=$1
for var in $*
do
   if [ $small -gt $var ];then
small=$var
fi
done
echo "small is  $small"


#!/bin/bash
echo "enter file you need to edit"
read file
if [ -f $file ];then
	#echo "$file is file"
	vim $file
else
	echo "$file does not exist"
fi

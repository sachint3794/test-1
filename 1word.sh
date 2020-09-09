#!/bin/bash
echo "enter word to search"
read word
grep -R -l "$word" * > list-file
if [ -$? -eq 0 ];then
	echo "$word is found in below files"
	cat list-file
	rm list-file
else
	echo "$word is not found"
fi

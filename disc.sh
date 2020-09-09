#!/bin/bash
mem=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//'`
echo " $mem"
if [ $mem -gt 10 ];then
echo -e "hi\n memory reached $mem, please take approrirate action\n thanks" | mailx -s "memory reached $mem" dearmanu92@gmail.com
fi


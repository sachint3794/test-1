!#/bin/bash
file=$1
line=`cat $file | wc -l`
while [ $line -gt 0 ]
do
 head -$line $file | tail -1 >> reverse
line=`expr $line - 1`
done 
cat reverse
rm reverse


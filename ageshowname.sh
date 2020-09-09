#!/bin/bash
sed '1d' $1 > temp3
while read line
do 
            age==`echo $line | awk - F " " '{print $3}'`
            if [ $age -ge $2 ]
             then
             echo $line | awk -F " " '{print $1,$3}'
fi
done < temp3
rm temp3

#!/bin/bash
echo "enter file name to find its location"
          read file
           find /home/ec2-user/ -iname "$file" > location-$file
            if [ $? -eq 0 ];then
              echo "$file is found in the below location"
             cat location-$file
              rm location-$file
             else
              echo "$file is not found in any location"
             fi

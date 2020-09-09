#!/bin/bash
echo "enter file name name to create softlink"
read file
if [ ! -f $file ];then
            echo "$file does not exist"
            exit 1
         fi
         echo "enter softlink name for file $file"
         read link
          if [ -L $link ];then
             echo "$link already exists"
             exit 1
          fi
       ln -s $file $link

#!/bin/bash
while [ 1 -eq 1 ]
do
echo "check below menu and select options"
echo -e "1)searchword\n2)edit a file\n3)Create softlink\n4)Find location of file\n5)Checkname\n6)exit\n"
echo "Select any options from above menu"
read opt

 case $opt in
     1) echo " enter word to search"
	     read word
	     grep -R -l "$word" * > list-file
	     if [ $? -eq 0 ];then
		     echo "word is found"
		     cat list-file
		     rm list-file
	     else
		     echo "$word is not found"
	     fi
              ;;
     2) echo "enter file to edit"
        read file
        if [ -f $file ];then
          vim $file
        else
         echo "$file does not exist"
        fi
        ;;
     
     3) echo "enter file name to create softlink"
         read file
         if [ !-f $file ];then
            echo "$file does not exist"
            exit 1
         fi
         echo "enter softlink name for file $file"
         read link
          if [ -L $link ];then
             echo "$link already exists"
             exit 0
          fi
       ln -s $file $link
         ;;

      4) echo "enter file name to find its location"
          read file
           find /home/ec2-user/  -iname "$file" > location-$file
            if [ $? -eq 0 ];then
              echo "$file is found in the below location"
             cat location-$file
              rm location-$file
             else
              echo "$file is not found in any location"
             fi
             ;;

         5) echo "enter name to check"
 read file
         if [ !-f $file ];then
            echo "$file does not exist"
            exit 1
         fi
         echo "enter softlink name for file $file"
         read link
          if [ -l $link ];then
             echo "$link already exists"
             exit 0
          fi
       ln -s $file $link		 read name
                 if  [ -f $name ];then
                  echo "$name is a file"
                  elif [ -d $name ];then
                  echo "$name is a  dir"
                    elif [ -L $name ];then
                       echo " $name is a link"
                 else " $name does not exist"
                  fi
                  ;;
        6)  exit
              ;;
         *) echo "This is invalid option. Please check menu to enter correct option"
                ;;
esac
done

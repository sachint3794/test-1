#!/bin/bash
while [ 1 -eq 1 ]
do
echo "check below menu and select options"
echo -e "1)searchword\n2)edit a file\n3)Create softlink\n4)Find location of file\n5)Checkname\n6)exit\n"
echo "Select any options from above menu"
read opt
case $opt in

1) ~/script/1word.sh
	;;
2)~/script/2edit.sh
	;;
3)~/script/3soft.sh
	;;
4)~/script/4location.sh
	;;
5)~/script/5checkname.sh
	;;
6)exit
;;
*)echo "this is invalid option, please check menu to enter"
	;;
esac
done

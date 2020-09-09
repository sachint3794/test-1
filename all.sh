#!/bin/bash
case $1 in 
mon|Mon)echo "create a file temp_3"
	touch temp_3
	;;
tue|Tue)echo "rename to test3 and copy"
	mv temp_3 temp3
	cp temp3 to test3
	;;
wed|Wed)echo "creating soft_link"
	ln -s test3 soft_test3
	;;
thu|Thu)echo "delete temp3"
	rm -rf temp3
	;;
fri|Fri)echo "create hardlink"
	ln test3 hard_test3
	;;
sat|sun)echo "today is holiday"
	;;
esac

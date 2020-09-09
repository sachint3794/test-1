#!/bin/bash
case $1 in
1) echo "this is one"
;;
2) echo "this is two"
;;
3) echo "this is three"
	;;
4|5)echo "this is four"
	;;
*)echo "this is invalid"
	;;
	esac


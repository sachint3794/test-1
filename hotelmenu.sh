#!/bin/bash

COUNTER=0
Bill=0
while [ $COUNTER -eq 0 ]
do
echo "What is your favorite Breakfast?"

echo "1 - DOSA"
echo "2 - IDLI"
echo "3 - VADA"
echo "4 - RICEITEM"
echo "5 - Exit"
read Main

   case $Main in
      1)echo "1-Onion Dosa,2-Rava Dosa,3-Masala Dosa"
        read subDosa
                case $subDosa in
                        1) Bill=`expr $Bill + 30`;;
                        2) Bill=`expr $Bill + 35`;;
                        3) Bill=`expr $Bill + 25`;;
                        4)exit;;
                esac
         ;;
   2)echo "1-Rava Idli,2-Rice Idli,3-Thatte Idli"
        read subIdli
                case $subIdli in
                        1) Bill=`expr $Bill + 35`;;
                        2) Bill=`expr $Bill + 25`;;
                        3) Bill=`expr $Bill + 20`;;
                        4)exit;;
                esac
        ;;
      3) echo "1-Onion Vada,2-Dal Vada,3-Aloo Vada"
        read subVada
                case $subVada in
                        1) Bill=`expr $Bill + 15`;;
                        2) Bill=`expr $Bill + 25`;;
                        3) Bill=`expr $Bill + 20`;;
                        4)exit;;
                esac
        ;;
  4) echo "1-Pullav,2-Puliogre,3-Bisibelebath"
        read subRice
                case $subRice in
                        1) Bill=`expr $Bill + 25`;;
                        2) Bill=`expr $Bill + 25`;;
                        3) Bill=`expr $Bill + 30`;;
                        4)exit;;
                esac
        ;;
      *) echo "Thank You"
         COUNTER=`expr $COUNTER + 1`
         ;;
   esac



done
echo "Bill amount is $Bill"


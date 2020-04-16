#!/bin/bash -x
echo "Welcome to Snake and Ladder Game"
WIN_POS=100
position1=0
position2=0
count1=0
count2=0
function  checkForOption()
{
     while [ $position1 -ne $WIN_POS ] || [ $position2 -ne $WIN_POS ] 
     do
        echo "Player 1 "
        rollsDie1=$(( (RANDOM%6) +1 ))
        ((count++))
  	option1=$(( (RANDOM%3) +1 ))
 	case $option1 in
     	1)echo $position1                ;;
     	2)position1=$(( $position1 + $rollsDie1 ))
          if [ $position1 -gt 100 ] 
          then
               position1=$(( $position1 - $rollsDie1 ))
          fi                                  ;;
      	3)position1=$(( $position1 - $rollsDie1 ))
         if [ $position1 -lt 0 ]
         then
              position1=0
         fi                         ;;
     	esac

        echo "Player 2"
        rollsDie=$(( (RANDOM%6) +1 ))
        ((count1++))
	rollsDie2=$(( (RANDOM%6) +1 ))
 	((count1++))
	option2=$(( (RANDOM%3) +1 ))
        case $option2 in
        1)echo $position2                     ;;
	2)position2=$(( $position2 + $rollsDie2 ))
          if [ $position2 -gt  $WIN_POS ]
          then
               position2=$(( $position2 - $rollsDie2 ))
          fi                                ;;
        3)position2=$(( $position2 - $rollsDie2 ))
          if [ $position2 -lt 0 ]
          then
	       position2=0
          fi                        ;;
       esac    
   done

echo $count1
echo $count2

if [ $position1 -eq $WIN_POS ]
then
     echo "Player1 is Winner"
elif [ $position2 -eq $WIN_POS ]
then
     echo "Player2 is Winner"
fi
}
gamePlaying="$( checkForOption ) " 



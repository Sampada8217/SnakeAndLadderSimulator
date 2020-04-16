#!/bin/bash -x
echo "Welcome to Snake and Ladder Game"
WIN_POS=100
position=0
count=0
function  checkForOption()
{
     while [ $position -ne $WIN_POS ]
     do
        rollsDie=$(( (RANDOM%6) +1 ))
        ((count++))
  	option=$(( (RANDOM%3) +1 ))
 	case $option in
     	1)echo $position                ;;
     	2)position=$(( $position + $rollsDie ))
          if [ $position -gt 100 ] 
          then
               position=$(( $position - $rollsDie ))
          fi
                                  ;;
      	3)position=$(( $position - $rollsDie ))
         if [ $position -lt 0 ]
         then
              position=0
         fi          ;;
     	esac
     done
echo $count
}
checkPosition="$( checkForOption )"


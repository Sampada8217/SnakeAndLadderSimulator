#!/bin/bash -x
echo "Welcome to Snake and Ladder Game"
position=0
WON_POS=100
rollsDie=$(( (RANDOM%6) +1 ))
function  checkForOption()
{ 
      while [ $position -lt  $WON_POS ]
      do
	     option=$(( (RANDOM%3) +1 ))
	     case $option in
  	     1)echo $position    ;;
             2)position=$(( $position + $rollsDie ))
                 ;;
             3)position=$(( $position - $rollsDie ))
	       if [ $position -lt  0 ]
               then
                    position=0  
     	       fi                  ;;
             esac
      done
}
checkPosition="$( checkForOption )"


#!/bin/bash -x
echo "Welcome to Snake and Ladder Game"
START_POS=0
position=0
rollsDie=$(( (RANDOM%6) +1 ))
function  checkForOption()
{
     option=$(( (RANDOM%3) +1 ))
     case $option in
     1)echo "No play stays in same positon"
       positon=0    ;;
     2)position=$(( $position + $rollsDie )) ;;
     3)position=$(( $rollDie - $position ))  ;;
     esac
}
checkPosition="$( checkForOption )"


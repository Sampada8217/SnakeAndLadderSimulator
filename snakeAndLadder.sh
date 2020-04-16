#!/bin/bash -x
echo "Welcome to Snake and Ladder Game"
WIN_POS=100
posPlayer1=0
posPlayer2=0
diceCountPlayer1=0
diceCountPlayer2=0
function  snakeAndLadderGame()
{
     while [ $posPlayer1 -ne $WIN_POS ] || [ $posPlayer2 -ne $WIN_POS ] 
     do
        echo "Player 1 "
        rollsDie1=$(( (RANDOM%6) +1 ))
        ((diceCountPlayer1++))
  	option1=$(( (RANDOM%3) +1 ))
 	case $option1 in
     	1)echo $posPlayer1                ;;
     	2)posPlayer1=$(( $posPlayer1 + $rollsDie1 ))
          if [ $posPlayer1 -gt 100 ] 
          then
               posPlayer1=$(( $posPlayer1 - $rollsDie1 ))
          fi                                  ;;
      	3)posPlayer1=$(( $posPlayer1 - $rollsDie1 ))
         if [ $posPlayer1 -lt 0 ]
         then
              posPlayer1=0
         fi                         ;;
     	esac

      #From here turn switches to player2
        echo "Player 2"
        rollsDie2=$(( (RANDOM%6) +1 ))
        ((diceCountPlayer2++))
	option2=$(( (RANDOM%3) +1 ))
        case $option2 in
        1)echo $posPlayer2                     ;;
	2)posPlayer2=$(( $posPlayer2 + $rollsDie2 ))
          if [ $posPlayer2 -gt  $WIN_POS ]
          then
               posPlayer2=$(( $posPlayer2 - $rollsDie2 ))
          fi                                ;;
        3)posPlayer2=$(( $posPlayer2 - $rollsDie2 ))
          if [ $posPlayer2 -lt 0 ]
          then
	       posPlayer2=0
          fi                        ;;
       esac    
   done

echo $diceCountPlayer1
echo $diceCountPlayer2

if [ $posPlayer1 -eq $WIN_POS ]
then
     echo "Player1 is Winner"
elif [ $posPlayer2 -eq $WIN_POS ]
then
     echo "Player2 is Winner"
fi
}
gamePlaying="$( snakeAndLadderGame ) " 



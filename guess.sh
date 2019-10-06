#!/bin/bash

let num=RANDOM%64+1


echo "Welcome to the number game"
echo "Guess a number between 1 and 64 (inclusive)"
read guessnum

count=1
while [ $count -le 5 ]
do
	if [ "$guessnum" -lt "$num" ]
	then
		echo "Too small."
		echo "Try again."

	elif [ "$guessnum" -gt "$num" ]
	then
		echo "Too big."
		echo "Try again."
	else
		echo "You won!."
		exit
	fi
read guessnum
sleep 1
(( count++))
done

#!/bin/bash

if [[ $2 = "+" ]]
then

	echo `expr $1 + $3`

elif [[ $2 = "-" ]]
then
	echo `expr $1 - $3`

elif [[ $2 = "x" ]]
then
	echo `expr $1 \* $3`

elif [[ $2 = "/" ]]
then

	if [[ $3 = "0" ]]
	then
		echo "Division-by-zero Error!"
	else
	echo `expr $1 / $3`
	fi

elif [ $2 = "/" 
then
	echo "Division-by-zero Error!"

else 

	echo "Usage - ./calculator.sh value1 operator value2"
	echo "where,"
	echo "value1: numeric value"
	echo "value2: numeric value"
	echo "operator: one of +,-,/,x"

fi


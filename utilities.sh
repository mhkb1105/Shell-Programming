#!/bin/bash

echo "----------------------------------------"
echo "	   M A I N - M E N U"
echo "----------------------------------------"
echo "1. Ongoing Processor Activity"
echo "2. Users currently logged in"
echo "3. Number of users currently logged in"
echo "4. Users with bash shell"
echo "5. Exit"
echo "Please enter option [1 - 5]:"

read input

if [ $input = "1" ]
then

	top

elif [ $input = "2" ]
then

	who

elif [ $input = "3" ]
then

	who | wc -l

elif [ $input = "4" ]
then

	ps aux | grep bash | grep -v grep | cut -d " " -f 1 

elif [ $input = "5" ]
then

	exit

else
echo "Error: Must enter number between [1 - 5]"
fi



	

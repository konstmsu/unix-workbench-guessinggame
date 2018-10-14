#!/usr/bin/env bash

while :
do
	read -p "Guess the number of files in $PWD: " guess

	actual=$(ls | wc -l)

	if [ $actual -eq $guess ]
	then
		echo "Congratulations, your guess is correct!"
		break
	elif [ $actual -lt $guess ]
	then
		hint="lower"
	else
		hint="higher"
	fi

	echo "The actual number is $hint than $guess, please try again"
done

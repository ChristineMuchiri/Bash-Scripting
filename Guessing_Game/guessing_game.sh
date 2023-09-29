#!/bin/bash

function random_number {
	echo "Guess a random one-digit number!:"

	local max=9
	local min=0

	random1="output.txt"
	echo "$((RANDOM % (9)+0))" > "$random1"

	read random

	while [ $random1 != $random ]
	do
		echo "Try again"
		read random
	done
	echo "Correct! The random number is $random"
	
}

function random_number2 {
	echo $RANDOM
	echo "Hint: type guessing_game for a fun diversion"
}


if [[ $1 =~ game|Game|GAME ]]
then
	random_number
else
	random_number2
fi

		

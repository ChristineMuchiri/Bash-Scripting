#!/bin/bash


function random_number {
	
	echo $RANDOM

}
random_number
 
echo -e "\033[31;40m Hint:type\033[0m\033[37;40imguessing-game.sh game\033[0m\033[31;40m for a fun diversion\033[0m"

exit 0

function random_number $1 {
	echo "Guess a random one-digit number!:"

	local max=9
	local min=0
	random1="output.txt"
	echo "$((RANDOM %(9)+0))" > "$random1"

	read random

	if [ $random1 == $random ]
	then
		echo "Oops! Try again"
	else
		echo "Correct, random number is $random"
	fi
}

random_number $i1




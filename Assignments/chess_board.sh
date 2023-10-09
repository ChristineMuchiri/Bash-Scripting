#!/bin/bash

red_box="\e[41m   \e[0m"
white_box="\e[47m   \e[0m"

read -p "Enter the width: " width
wid=$(($width / 2))


for ((i=1; i<= "$width"; i++))
do
	for ((j=1; j<= "$width"; j++))
	do
		if [ $(( j % 2 )) == 0 ]
		then
			echo -e -n $red_box$white_box
		else
			echo -e -n $white_box$red_box
		fi
	done


done


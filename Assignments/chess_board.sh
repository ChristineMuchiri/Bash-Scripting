#!/bin/bash

red_box="\e[41m   \e[0m"
white_box="\e[47m   \e[0m"

read -p "Enter the width: " width
wid=$(($width / 2))
for ((i=1; i<= "$width"; i++))
do
	if [ "$((i % 2))" -eq 0 ]
	then
		echo -e $red_box$white_box
	else
		echo -e $white_box$red_box
	fi
done

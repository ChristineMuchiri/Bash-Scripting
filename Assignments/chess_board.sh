#!/bin/bash

red_box="\e[41m   \e[0m"
white_box="\e[47m   \e[0m"

read -p "Enter the width: " width
wid=$(($width / 2))
for ((i=0; i<= "$wid"; i++))
do
	echo -e $red_box
	echo -e $white_box


done





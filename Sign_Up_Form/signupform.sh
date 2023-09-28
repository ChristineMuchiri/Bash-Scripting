#!/bin/bash

color="\033[37;40m"
none="\033[0m"

echo -e $color"WELCOME TO BASH SCRIPTING"$none

echo "Please enter your name: "
read NAME

echo "Enter your email address: "
read EMAIL
pattern="@gmail.com"

if echo "$EMAIL" | grep -q "$pattern"
then 
	echo "Enter your password: "
	read PASSWORD

	echo "Confirm your password: "
	read PASSWORD1

	if [ "$PASSWORD" != "$PASSWORD1" ]
	then
		echo "Passwords do not match"
	else
		echo "Thank you $NAME for signing up to Bash Scripting"
		echo "NAME: $NAME"
		echo "EMAIL: $EMAIL"
	fi
else
	echo "Invalid email address!"
fi

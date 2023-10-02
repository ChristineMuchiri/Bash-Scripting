#!/bin/bash

timeout 4s
exit 1

color="\033[36;40m"
none="\033[0m"

echo -e $color"Welcome to our online testing platform"$none
echo -e $color"Please choose the below options:"
echo
echo -e $color"1) Sign up"$none 
echo -e $color"2)Sign In"$none
echo -e $color"3) EXIT"$none
echo
echo "Note:Script Exit Timeout is set"
echo
echo "Please choose your option: "
read input

case $input in
	1) echo -e $color"Sign Up Screen"$none
		echo
		read -p "Please chose your username: " username
		read -p "Please enter your password: " password
		read -p "Please re enter your password: " password1
		if [ $password == $password1 ]
		then
			echo "Registration Successful.Please hit any key to continue"
		else
			echo "Password do not match"
		fi
	
		echo "2)View test";;
	2) echo "Sign up";;
	3) exit 1
esac


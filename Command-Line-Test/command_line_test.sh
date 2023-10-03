#!/bin/bash

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

clear
case $input in
	1) echo -e $color"Sign Up Screen"$none
		echo
		username_file="registered_username.txt"
		declare -a sign_up=()
		if [[ -f "$username_file" ]]
		then
			readarray -t sign_up < "$username_file"
		fi
		read -p "Please chose your username: " username
		
			if [[ "${sign_up[@]}" =~ "$username" ]]
			then
				echo "Username $username exists: Please choose some other name."
				read -p "Please chose your username: " username
			else
				sign_up+=($username)
				echo "${sign_up[@]}" >> "$username_file"
			fi

				read -s -p "Please enter your password: " password
				echo
				read -s -p "Please re enter your password: " password1
				echo

					if [ $password == $password1 ]
					then
						echo "Registration Successful.Please hit any key to continue"
						read any_key
						clear
					else
						echo "Password do not match"
					fi
		;;
	2) echo "Sign up";;
	3) exit 1
esac


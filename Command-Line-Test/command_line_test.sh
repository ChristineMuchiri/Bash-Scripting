#!/bin/bash

color="\033[36;40m"
none="\033[0m"

echo -e $color"Command Line Test"$none
echo -e $color"Please choose the below options:"
echo
echo -e $color"1) Sign In"$none 
echo -e $color"2)Sign Up"$none
echo -e $color"3) EXIT"$none
echo
echo "Note: Script Exit Timeout is set"
echo
read -p "Please choose your option: " input
clear

case $input in
	2)
		echo "My command Line Test"
		echo -e $color"Sign Up Screen"$none
		echo
		username_file="user_credentials.csv"
		declare -a sign_up=()
		
		read -p "Please chose your username: " username
		read -s -p "Please enter your password: " password
		echo
		read -s -p "Please re enter your password: " password1
		echo

		grep "$username" user_credentials.csv >/dev/null
		if [[ $password == $password1 && $? == 0  ]]
		then
			echo "Username "$username" Exists!!: Please choose some other name"
		else
			read -n 1 -s -r -p "Registration successful. Please hit any key to continue"
			sign_up+="$username, $password"
			echo "${sign_up[@]}" >> "user_credentials.csv"
		fi
		;;
	1) echo -e $color"Sign in Screen"$none
		echo "Please enter your"
		read -p "Username: " username
		read -s -p "Password: " password
		echo
		clear
		echo "1) Take a Test"
		echo "2) View your Test"
		echo "3) Exit"
		echo "Please choose your option: "
		read option

		case $option in
			1)
				echo "Time Remaining: seconds"
				echo
				echo "1. Which one of these is a fruit?"
				echo "[a] apple"
				echo "[b] onion"
				echo "[c] tomato"
				echo "[d] cabbage"
				echo
				read -p "Choose your option: " ans1
				clear
				echo "2. Which one of these is a vehicle?"
				echo "[a] car"
				echo "[b] table"
				echo "[c] cot"
				echo "[d] sky"
				echo
				read -p "Chose your option: " ans2
				clear
				echo "3.Which one of these is a vegitable?"
				echo "[a] orange"
				echo "[b] banaba"
				echo "[c] beans"
				echo "[d] mango"
				echo
				read -p "Chose your option: " ans3
				echo
				echo "Test Completed will be logged off shortly"
				sleep 3
				clear;;
			2)
				echo "My Command Line Test"
				echo
				echo "Viewing your previous test history"
				read -p "More: Hit any key to continue or X to exit:" key
				if [[ "$key" =~ "X" ]]
				then
					exit 1
				else
					echo "Continue"
				fi
				;;
			3)
				exit 1
				;;
			*)
				echo "Invalid option: Try Again!!"
		esac
		;;
	3) exit 1
		;;
	*)
		echo "Invalid option : Try Again"
esac

#!/bin/bash

echo "1 - Lower to upper"
echo "2 - Upper to lower"
read -p "Please choose an option: " option
file="$1"
case $option in
	1)
		while read arg
		do
			echo "$arg" | tr '[:lower:]' '[:upper:]'
		done < "$file"
		;;
	2)
		while read arg
		do
			echo "$arg" | tr '[:upper:]' '[:lower:]'
		done < "$file"
esac
#lower_to_upper() {
#	echo "$arg" | tr '[:lower:]' '[:upper:]'
#}

#upper_to_lower() {
#	echo "$arg" | tr '[:upper:]' '[:lower:]'
#}

#case $option in 
#	1)
#		lower_to_upper
#		;;
#	2)
#		upper_to_lower
#esac

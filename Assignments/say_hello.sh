#!/bin/bash

time=$(date +%H)
get_greeting() {
	
	if [ "$time" -ge 5 ] && [ "$time" -le 12 ]
	then
		echo "Good Morning user, Have a nice day!"
	elif [ "$time" -ge 12 ] && [ "$time" -le 1 ]
	then
		echo "Good noon user"
	elif [ "$time" -ge 2 ] && [ "$time" -le 5 ]
	then
		echo "Good afternoon user"
	elif [ "$time" -ge 5 ] && [ "$time" -le 9 ]
	then
		echo "Good evening user"
	else
		echo "Goodnight user"
fi
}
greeting=$(get_greeting)
echo $greeting
echo -n "It's "
date

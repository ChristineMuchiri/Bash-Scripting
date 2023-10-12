#!/bin/bash

get_greeting() {
	time=$(date +%H)
	
	if (( time >= 5  &&  time < 12 ))
	then
		echo "Good Morning user, Have a nice day!"
	elif (( time >= 12  &&  time < 13 ))
	then
		echo "Good noon user"
	elif  (( time >= 13  && time < 17 ))
	then
		echo "Good afternoon user"
	elif (( time >= 17  && time < 21 ))
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

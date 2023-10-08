#!/bin/bash



	a=0
	b=1

	while [ "$a" -le "$1" ]
	do
		echo -n " $a,"
		c=$((a + b))
		a=$b
		b=$c
	
		
	done
 

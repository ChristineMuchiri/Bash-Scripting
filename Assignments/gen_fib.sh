#!/bin/bash

limit=$1
function fibonacci {
	n=8
	a=0
	b=1

	for (( i=0; i<n; i++))
	do
		echo -n "$a"
		if [ "$a" >= 10 ]
		then
			exit 1
		else
			c=$((a + b))
			a=$b
			b=$c
		fi
		
	done
}
fibonacci

#!/bin/bash

args=("$@")

if [ $# -eq 0 ]
then
	echo "Error: No argument passed"
else
	for (( i = ${#args[@]} - 1; i >= 0; i--))
	do
		echo "${args[i]}"
	done
fi


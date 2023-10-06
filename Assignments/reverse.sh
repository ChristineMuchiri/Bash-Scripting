#!/bin/bash

args=("$@")
length=${#args[@]}

if [ $# -eq 0 ]
then
	echo "Error: No argument passed"
else
	
		if [ "${args[-1]}" == 0 ]
		then
			new_args=("${args[@]:0:$((length - 1))}")
			for (( i = ${#new_args[@]} - 1; i >=0; i--))
			do
				echo "${new_args[i]}"
			done
		else
			for (( i = ${#args[@]} -1; i >= 0; i--))
			do
				echo "${args[i]}"
			done
		fi
	
fi


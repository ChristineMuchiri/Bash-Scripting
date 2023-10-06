#!/bin/bash

args=("$@")
operator="${arg[${#arg[@]}-1]}"

case $operator in
	+)
		sum=0
		for number in "${args[@]}"
		do
			while [ "$number" -gt 0 ]
			do
				digit=$((number % 10))
				total_sum=$((total_sum + digit))
				number=$((number / 10))
			done
		done
		echo "Sum is $total_sum"
		;;
esac
		

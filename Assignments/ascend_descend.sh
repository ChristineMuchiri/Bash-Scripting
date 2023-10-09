#!/bin/bash

arg="$@"
array="${arg[@]}"

echo "1. Ascending"
echo "2. Descending"
echo $array
read -p "Please select an option: " option

function bubble_sort {
	local arr=("$@")
	local length="${#arr[@]}"
	local swapped

	while true
	do
		swapped=false
		for ((i=1; i<length; i++))
		do
			if ((arr[i-1] > arr[i]));
			then
				temp="${arr[i-1]}"
				arr[i-1]="{arr[i]}"
				arr[i]="$temp"
				swapped=true
			fi
		done
		if ! "$swapped"
		then
			break
		fi
	done
	echo "${arr[@]}"
}

case $option in
	1)
		sorted_numbers=($(bubble_sort "${array[@]}"))
		echo "Sorted array is ${sorted_numbers[@]}"
		
esac

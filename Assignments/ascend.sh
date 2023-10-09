#!/bin/bash

arr=(2 56 98 3 5 6 100 23)
length=${#arr[@]}

	for ((i=0; i< $length-1; i++))
	do
		swapped=false

		for ((j=0; j<$length-$i-1; j++))
		do
			if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
			then
				temp=${arr[$j]}
				arr[$j]=${arr[$j+1]}
				arr[$j+1]=$temp
				swapped=true
			fi
		done

		if [ "$swapped" = false ]
		then
			break
		fi
	done


echo "sorted array: ${arr[@]}"

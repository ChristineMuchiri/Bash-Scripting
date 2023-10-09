#!/bin/bash

arr=("$@")
length=${#arr[@]}

echo "1. Ascending"
echo "2. Descending"
read -p "Please select an option: " option

case $option in
	1)
		for ((i=0; i<$length-1; i++))
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
		echo "${arr[@]}"
		;;
	2)
		for ((i=0; i<$length-1; i++))
		do
			swapped=false
			for ((j=0; j<$length-$i-1; j++))
			do
				if [[ ${arr[$j]} -le ${arr[$j+1]} ]]
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
		echo "${arr[@]}"
		
esac

#!/bin/bash

read number

for i in $number
	do
		echo -n $i 
		((i++)) 
		echo $i
	for i in $number
	do
		echo -n $i
		((i++))
		echo -n $i
		((i++))
		echo $i
	for i in $number
	do
		echo -n $i
		((i++))
		echo -n $i
		((i++))
		echo -n $i
		((i++))
		echo $i
	done
	done
done


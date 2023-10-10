#!/bin/bash

read -p "Enter limit for fib series: " limit

a=0
b=1

while [[ $a -le $limit ]]
do
	c=$((a + b))
	a=$b
	b=$c
	if [[ $a -gt $limit ]]
	then
		echo "Greatest val = $a"
	fi
done
echo "$?"


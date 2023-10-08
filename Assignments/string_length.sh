#!/bin/bash

arg=("$@")
array=${arg[@]}

for arg in "${arg[@]}"
do
	length=${#arg}
	echo "Length of string ($arg) - $length"
done

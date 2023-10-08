#!/bin/bash

arg=("$@")
array=${arg[@]}
len=${#arg[@]}
for arg in "${arg[@]}"
do
	length=${#arg}
	echo "Length of string ($arg) - $length"
done

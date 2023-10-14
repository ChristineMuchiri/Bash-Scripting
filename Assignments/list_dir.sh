#!/bin/bash

directories="$@"

if [[ $# == 0 ]]
then
	for item in *
	do
		echo "$item"
	done
else
	for dir in "${directories[@]}"
	do
		echo $dir
		find "$dir"
		echo
	done
fi

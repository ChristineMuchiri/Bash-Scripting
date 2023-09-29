#!/bin/bash

echo "Please enter the directory"

read DIRECTORY

if [ -d "$DIRECTORY" ]
then
	echo "$(ls -l "$DIRECTORY")" > "output.txt"
else
	echo "The directory does not exist"
fi

aspell check "output.txt" > "spelling.txt"

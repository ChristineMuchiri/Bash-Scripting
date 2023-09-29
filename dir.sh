#!/bin/bash

echo "Enter the name of the directory"

read DIRECTORY

if [ -d "$DIRECTORY" ]
then
	ls -l "$DIRECTORY"
fi

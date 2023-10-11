#!/bin/bash

head -5 myfile.txt | tail -n +3 | head -n 3
string_to_compare="myfile.txt"
arg="$1"
if [ "$arg" = "$string_to_compare" ]
then
	echo "Usage : ./file_filter.sh start_line uptoline filename"
	echo "Example: ./20_file_filter.sh 5 5 <file>"
fi

 

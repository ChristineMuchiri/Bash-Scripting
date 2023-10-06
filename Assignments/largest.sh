#!/bin/bash
largest=$1

if [ $# -eq 0 ]
then
	echo "Error: No arguments passed"
else
	for num in "$@"
	do
		if [ "$num" -gt "$largest" ]
		then
			largest=$num
		fi
	done
fi
echo "Largest value is $largest"


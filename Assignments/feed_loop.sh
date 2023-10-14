#!/bin/bash

echo "Before loop file contents"
echo "Hi hello"
echo "After loop file contents"

while true
do
	echo "Hi hello" >> output.txt
	sleep 1
done & tail -f output.txt

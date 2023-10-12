#!/bin/bash

num=1
new_name="$1"
for file in *.pdf
do
	
	mv -- "$file" "$(printf "%s" $1).pdf"
	num=$num+1

done

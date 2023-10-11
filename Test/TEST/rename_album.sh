#!/bin/bash


new_name="$1"
for file in *.pdf
do
	
	mv -- "$file" "$(printf "%s" $1).pdf"

done

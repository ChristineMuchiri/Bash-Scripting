#!/bin/bash

read number

for i in $number
	do
		echo "$i $((i +1))"
		echo "$i $((i +1)) $((i +2))"
		echo "$i $((i +1)) $((i +2)) $((i +3))"
	done

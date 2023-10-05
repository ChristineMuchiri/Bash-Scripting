#!/bin/bash

echo "Enter the numbers to addition" 
read number1 number2
if [[ $number1 =~ ^[0-9]+$ && $number2 =~ ^[0-9]+$ ]]
then 
	ans=$(expr $number1 + $number2 )
	echo "Answer is $ans"
else
	ans=$(echo "$number1 + $number2" | bc -l)
	echo "Answer is $ans"
fi

#!/bin/bash

echo -e "\033[36;40mThis is my Calculator\033[0m"

echo "Enter your first number: "
read NUM1

echo "Enter your second number: "
read NUM2

echo "Enter your operand (+, -, /, *) "
read OPERAND

if [ "$OPERAND" == "+" ]; then
	results=$((NUM1 + NUM2))
elif [ "$OPERAND" == "-" ]; then
	results=$((NUM1 - NUM2))
elif [ "$OPERAND" == "*" ]; then
	results=$((NUM1 * NUM2))
elif [ "$OPERAND" == "/" ]; then
	results=$((NUM1 / NUM2))
else
	echo "Invalid operand"
	exit 1
fi 

echo "The answer is $results"

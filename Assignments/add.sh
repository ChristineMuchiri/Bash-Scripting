#!/bin/bash

echo "Enter the numbers to addition" 
read number1 number2
ans=$( echo "expr $number1 + $number2" | bc -l )
echo "Answer is $ans"

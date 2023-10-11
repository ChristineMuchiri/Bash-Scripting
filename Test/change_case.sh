#!/bin/bash

read -p "Enter any string in Lower Case: " lowercase
echo -n "Result: " 
echo "$lowercase" | tr '[:lower:]' '[:upper:]'
read -p "Enter any string in Upper Case: " uppercase
echo -n "Result: "
echo "$uppercase" | tr '[:upper:]' '[:lower:]'

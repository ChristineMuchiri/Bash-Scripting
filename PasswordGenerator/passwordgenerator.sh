#!/bin/bash

echo "This is a simple password generator"
echo "Please enter the length of the password: "

read PASS_LENGTH

for p in $(seq 1 3)
do 
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

#!/bin/bash

length=8
charset="AaBbCcDdEeFfGghijklMNOpqrstUVWxyZ123456789!@#$%^&*"

password=""
for i in $(seq 1 $length)
do
	random_byte=$(od -An -N1 -i /dev/urandom)
	index=$((random_byte % ${#charset}))
	password="${password}${charset:index:1}"
done

echo $password

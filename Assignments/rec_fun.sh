#!/bin/bash

print_arg() {
	if [ $# -gt 0 ]
	then
		echo "$1"
		shift
		print_arg "$@"
	fi
}
print_arg "$@"

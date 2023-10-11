#!/bin/bash

start_line="$1"
num_lines="$2"
file_name="$3"


head -n $1 $3 | tail -n +$1 | head -n $2
 

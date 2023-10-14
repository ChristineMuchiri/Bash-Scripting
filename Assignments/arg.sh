#!/bin/bash

lines=$(wc -l $1 | cut -d ' ' -f 1)
words=$(wc -w $1 | cut -d ' ' -f 1)
echo "$lines"
echo "$words"

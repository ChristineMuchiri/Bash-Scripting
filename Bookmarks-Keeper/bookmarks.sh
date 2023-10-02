#!/bin/bash

if [ $# == 0 ]
then
	echo "Please input a search word"
	exit 1
fi

search_word="$1"

#Path to googles chrome bookmarks file

chrome_bookmarks="$HOME/.config/google-chrome/Desault/Bookmarks"

if [[ -z $chrome_bookmarks ]]
then
	echo "Chrome Bookmarks file not found."
	exit 1
fi

#using jq to parse and filter bookmarks

filtered_bookmarks=$(jq -r ".roots.other.children[] | select( .name | test(\"$search_word\"; \"i\")) | .name, .url" "$chrome_bookmarks")

echo "Filtered bookmarks containing '$search_word':"
echo "$filtered_bookmarks"

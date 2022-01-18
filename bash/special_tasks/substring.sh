#!/bin/bash
echo "Enter text: "
read text
echo "Enter substring: "
read sub

if [[ $text =~ $sub ]]; then
	echo "Yes,there is."
else
	echo "No,there is not."
fi


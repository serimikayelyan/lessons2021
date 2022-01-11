#!/bin/bash
echo "string "
read a
echo "sub"
read b



if [[ $a == *"$b"* ]]; then
	echo "true"
else
	echo "false"
fi


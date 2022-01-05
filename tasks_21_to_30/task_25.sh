#!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if [[ $a+$b -gt $c ]] && [[ $b+$c -gt $a ]] && [[ $a+$c -gt $b ]]; then 
	echo "y=1"
else
	echo "y=2"
fi


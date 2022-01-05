#!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if [[ $a -eq 1 ]] || [[ $b -eq 1 ]] || [[ $c -eq 1 ]]; then
	echo "true"
else
	echo "false"
fi

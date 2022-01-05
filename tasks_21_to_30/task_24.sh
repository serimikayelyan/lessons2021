#!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if [[ $a -eq 2 ]] && [[ $b -eq 2 ]] && [[ $c -ne 2 ]]; then
        echo "true"
elif [[ $a -eq 2 ]] && [[ $b -ne 2  ]] && [[ $c -eq 2 ]]; then
        echo "true"
elif [[ $a -ne 2 ]] && [[ $b -eq 2 ]] && [[ $c -eq 2 ]]; then
        echo "true"
else
	echo "false"
fi


#!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if [[ $a%2 -eq 0 ]] || [[ $b%2 -eq 0 ]] || [[ $c%2 -eq 0 ]]; then
       echo "1"
else
 echo "2"	
fi


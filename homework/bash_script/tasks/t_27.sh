#!/bin/bash
#task 27

s1=(($2 - $1))
s2=(($3 - $2))

if [[ $s1 -eq $s2 ]]
then 
    echo "true"
else 
    echo "false"
fi


#!/bin/bash
echo "a $1"
echo "b $2"
echo "c $3"
if [[ $1 -eq $2 || $1 -eq $3 || $2 -eq $3 ]]
then
    echo "true"

else 
    echo "false"
fi

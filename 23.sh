#!/bin/bash

echo "enter the first number"
read first
echo "enter the second number"
read second
echo "enter the third number"
read third

if [[ $first == $second || $first == $third || $second == $third ]]
then 
        echo "True"
else [[ $first != $second || $first != $third || $second != $third ]]
        echo "False"
fi


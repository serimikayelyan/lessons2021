#!/bin/bash

echo "enter the first number"
read first
echo "enter the second number"
read second
echo "enter the third number"
read third

if [[ $first+$second -gt $third && $first+$third -gt $second && $third+$second -gt $first ]]
then
        echo "Y=1"
else
        echo "Y=2"
fi



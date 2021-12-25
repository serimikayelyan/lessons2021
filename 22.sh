#!/bin/bash


echo "enter the first number"
read first
echo "enter the second number"
read second
echo "enter the third number"
read third
if [ $first -lt $second ]; then
if [ $first -lt $third ]; then
        echo -e "$first is the lessest number"
else
        echo -e "$third is the lessest number"
fi
else
if [ $second -lt $third ]; then
        echo -e "$second is the lessest number"
else
        echo -e "$third is the lessest number"
fi
fi



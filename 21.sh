#!/bin/bash


echo "enter the first number"
read first
echo "enter the second number"
read second
echo "enter the third number"
read third
if [ $first -gt $second ]; then
if [ $first -gt $third ]; then
	echo -e "$first is the biggest number"
else
	echo -e "$third is the biggest number"
fi
else 
if [ $second -gt $third ]; then
	echo -e "$second is the biggest number"
else 
	echo -e "$third is the biggest number"
fi
fi


#!/bin/bash

read -p "Enter a word: " word
read -p "Enter a part: " part
list=()
Word="$word"
num=0
if [[ $word == "" || $part == "" ]]; then
	echo "Ups!!! Enter a word or part" && exit 1
else
    for ((i=0;i<${#word};i++)); do
    list[$num]=${Word:$i:${#part}}
	num=$(($num+1))
    done
fi
result=false
for i in ${list[@]}; do
    if [[ $part == $i ]]; then
	result=true
    fi
done
if [[ $result == true ]]
then
	echo true && exit 0
else
	echo false && exit 1
fi

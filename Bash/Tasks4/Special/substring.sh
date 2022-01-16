#!/bin/bash

read -p 'Input word: ' word
read -p 'Searching part: ' part

wordList=()

if [[ $word == "" || $part == "" ]]
then
	echo "Missing argument"
	exit 1
else
    strWord="$word"
    arrNum=0

    for (( i = 0; i < ${#word}; i++ ))
    do
        wordList[$arrNum]=${strWord:$i:${#part}}
	arrNum=$(($arrNum+1))
    done
fi

bool=false

for i in ${wordList[@]}
do
    if [[ $part == $i ]]
    then
	bool=true
    fi
done

if [[ $bool == true ]]
then
	echo true
	exit 0
else
	echo false
	exit 0
fi

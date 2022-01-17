#!/bin/bash
echo -n "insert first word: "
read a
echo -n "insert second word: "
read b
if [[ $a =~ $b ]]
then
    echo "true"
else
    echo "false"
fi


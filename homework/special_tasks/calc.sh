#!/bin/bash
echo "operators: + - / * ** "

read -p "tiv1: " tivN1
if [[  ]]; then
fi
read -p "nshan: " nshan
read -p "tiv2: " tivN2

if [[ $nshan == "+" ]]; then
    echo $(( $tivN1 + $tivN2 ))
elif [[ $nshan == "-" ]]; then
    echo $(( $tivN1 - $tivN2 ))
elif [[ $nshan == "/" ]]; then
    echo $(( $tivN1 / $tivN2 ))
elif [[ $nshan == "*" ]]; then
    echo $(( $tivN1 * $tivN2 ))
elif [[ $nshan == "**" ]]; then
    echo $(( $tivN1 ** $tivN2 ))
else 
    echo "Ya poka ne mogu reshit takoe. Do svidaniya <3"
fi

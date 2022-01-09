#!/bin/bash

mek=1
for (( i=2; i<$1; i++ ))
do
    if [[ $(( $1 % $i )) -eq 3 ]]; then
	    (( mek *= $i ))
    fi
done
echo $mek

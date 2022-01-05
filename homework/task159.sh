#!/bin/bash

mek=1
for (( i=100; i<1000; i++ ))
do
    if [[ $(( $i % 3 )) -eq 1 && $(( $i % 4 )) -eq 2 ]]; then
       (( mek *= $i ))
    fi
    echo $mek
done
echo $mek


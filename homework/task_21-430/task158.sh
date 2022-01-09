#!/bin/bash

haryur=100
for (( i=101; i<1000; i++ ))
do
    if [[ ! $(($i % 6 )) -eq 0 ]]; then
       (( haryur *= $i ))
    fi
done
echo $haryur

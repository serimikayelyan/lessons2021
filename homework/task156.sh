#!/bin/bash

tasnyhing=15
for (( i=16; i<100; i++ ))
do
    if ! (( $i % 15 ));then
        (( tasnyhing *= $i ))
    fi
done
echo $tasnyhing

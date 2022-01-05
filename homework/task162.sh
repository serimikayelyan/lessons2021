#!/bin/bash


for (( i=9999; i>999; i-- ))
do
    x=` bc <<< " scale=0; sqrt( $i * 14 ) " `
    if [[ $(( $x * $x )) -eq $(( $i * 14 )) ]]; then
    echo $i
    break
    fi
done

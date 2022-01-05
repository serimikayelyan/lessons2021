#!/bin/bash


for (( i=9999; i>999; i-- ))
do
    x=` bc <<< " scale=0; sqrt( $i * 18 ) " `
    if [[ $(( $x * $x )) -eq $(( $i * 18 )) ]]; then
    echo $i
    break
    fi  
done


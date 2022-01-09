#!/bin/bash


n=$1
for (( i=100; i<1000; i++ ))
do
    x=` bc <<< "sqale=0; sqrt( $i ) " ` 
    if [[ $x -gt $1 ]]; then
    fi
done

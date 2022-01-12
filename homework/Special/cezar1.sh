#!/bin/bash

#Arajin@ mutqagreq tiv@ heto bar@
if [[ $# -ne 2  ||  $1 -lt -36 ||  $1 -gt 35 ]]; then
echo "Ups!!! One of the arguments is not entered" 1>&2 && exit 
fi
a=$1

if [[ $a -lt 0 ]]; then
  a=$((a+36))
fi

echo $2 | tr $(printf %${a}s | tr ' ' '.')\0-9a-z 0-9a-z0-9a-z

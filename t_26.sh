#!/bin/bash

if [[ $1%2 -eq 0 || $2%2 -eq 0 || $3%2 -eq 0 ]]
then 
    echo "mek"
elif [[ $1%2 -ne 0 || $2%2 -ne 0 || $3%2 -ne 0 ]]
then  
    echo "erku"
fi

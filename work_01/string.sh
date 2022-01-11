#!/bin/bash

string="hello"

#
#Check number of arguments
#
if [ $# -ne 1 ]
then
    echo "Error: Give one argument."
    exit 1
fi

if [ `echo $string | grep $1` ]
then
    echo "True"
else
    echo "False"
fi

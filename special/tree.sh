#!/bin/bash

if [[ $1 ]]; then
        dest=$1
else
        dest=$PWD
fi

find $dest | sed -e "s;$dest;\.;g;s;[^/]*\/;|__;g;s;__|; |;g"


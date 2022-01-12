#!/bin/bash

function my_tree 
{

local tab="    $2"

if [[ ! -d $1 ]]; then
    echo "give me directory"
fi

for i in $1/* ; do
    echo "$tab ${i##*/}"

    if [[ -d $i ]]; then
	my_tree $i "$tab"
    fi
done
}

my_tree $1

#!/bin/bash

function my_find
{

    file_name=$2
    
    if [[ ! -d $1 ]]; then
        echo "give me directory"
        return 1
    fi
    
    if [[ ! $file_name ]]; then
        echo "give me file"
        return 2
    fi

    for i in $1/*
    do
	local name=` rev <<< $i | cut -d "/" -f 1 | rev `
	if [[ $name == $file_name ]]; then
            echo ${i//"//"/"/"}
	fi
        if [[ -d $i ]]; then
            my_find $i $file_name
        fi
    done
}

my_find $1 $2



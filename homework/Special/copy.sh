#!/bin/bash
  
function copy_cp
{
    file=$1
    copyfile=$2
    if [[ $file == "" ]]; then
        echo "Error: Enter a file" && exit 1
    else
        if [[ -f $file ]]; then
        if [[ $copyfile == "" ]]; then
             echo "Error: " && exit 1
        else
            cat $file > $copyfile
        fi
        else
            echo "Ups!! Forgot to enter the filename" && exit 1
        fi
    fi
}

copy_cp $1 $2


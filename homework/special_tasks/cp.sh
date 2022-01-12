#!/bin/bash

function my_cp
{
    file=$1
    dest=$2
    dest_file_name=${file##*/}
    dest_path=$dest
    if [[ ! -f $file ]]; then
        echo "give me file "
        return 1
    fi
    
    if [[ ! -d $dest ]]; then
        dest_path=${dest##/*}
        if [[ ! -d ${dest_path} ]]; then
            echo "give me existing directory"
        else
            dest_file_name=${dest##*/}
        fi
    fi
    
    cat $file > $dest_path/$dest_file_name
    
}

my_cp $1 $2

#!/bin/bash
  
dir=$1
file=$2
function tree
{
    for i in $dir/*; do
        if [[ -f $i ]]; then
        echo $i | sed -e 's;$i;\.;g;s;[^/]*\/;|__;g;s;__|; |;g'
        elif [[ -d $i ]]; then
            dir=$i
            tree
       fi
    done
}
tree


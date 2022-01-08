#!/bin/bash
   
function main
{
    file_name=$1
    dest_file=$2
	 
    if [[ ! $file_name ]]; then
        echo No filename is given
        return 1
    fi
 
    if [[ ! $dest_file ]]; then
        echo No destination is given
        return 2
    fi
 
    if [[ ! -e $file_name ]]; then
        echo \"$file_name\" does not exist
        return 3
    fi

    if [[ -d $dest_file ]]; then
	readarray -d "/" -t name <<< $file_name
	name=${name[-1]}
        dest_file=$dest_file/$name
    fi

    if [[ ! $file_name =~ ^[/~] ]]; then
	file_name=$PWD/$file_name
    fi
  
    cat $file_name > $dest_file
}

main $1 $2

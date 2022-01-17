#!/bin/bash
parse_dir () {
    for name in $1 /*; do

	    if [[ -d $name ]]; then
		    parse_dir $name 
            else
               echo $name
	    fi
   done
}


parse_dir $1

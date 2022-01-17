#!/bin/bash
function split {
      
    if [[ $# -eq 0 ]]
      then
      echo "input two arguments string and delimiter"

    
    else
    	
	    string=$(echo $1 | tr "$2" "\n " )

	    #str=$(echo $1 | tr "$2" [:space:] '\t')
	    for i in $string
	    do
		echo $i
	
	    done
    fi
}

split $@






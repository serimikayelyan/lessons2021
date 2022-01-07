#!/bin/bash
###### use this syntax:./find.sh ./dirname(in current directory) or ./find.sh ./ to see the current directory files


find_dir () {
	for name in ${1}/*

	  do
		  if [ -d ${name} ]
		    then
			    find_dir ${name}
			    
		else
		     echo ${name} 
	         
		  fi

	 done

}

find_dir ${1}



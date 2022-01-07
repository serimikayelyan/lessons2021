#!/bin/bash
echo " use this syntax:./find.sh ./dirname(in current directory)"

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



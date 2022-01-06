#!/bin/bash
#this does not work)


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


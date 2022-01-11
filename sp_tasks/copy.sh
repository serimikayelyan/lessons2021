#!/bin/bash
function copy {
    sourse=$1
    dest=$2
    if [[ $# -eq 0 ]]
      then 
	      echo "input source and destination names"
	      exit 1 
    fi

   


    if [[ ! -s $sourse ]]
      then 
		echo "This file doesn't exist"
                exit 1
  else
	  echo " $sourse copied in $dest"
     fi


     if [[ -d  $dest ]]
       then

           readarray -d "/" filename <<< $sourse
	   #filename=$(`cut -d "/" ` < $sourse)
	   #cut -d "/"  filename <<< $sourse
          #IFS='/ '     filename  <<< $source
	   dest=$dest/$filename
     fi

       
     cat $sourse >> $dest
 }
 


copy $1 $2	







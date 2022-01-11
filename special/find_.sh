#!/bin/bash
path=$HOME
a=$1
find_ ()
{
  for i in $path/*; do
      if [[ `basename $i` == $a && -f $i ]]; then
          echo $i
      elif [[ `basename $i` == $a && -d $i ]]; then
	  echo "$i/"
  elif [[ -d $i ]]; then
	 path=$i
	 find_
      fi
      
       
done 
}
find_
        

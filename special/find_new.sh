#!/bin/bash
path=$1
file=$2
find_ ()
{

    for i in $path/*; do
      if [[ `basename $i` == $file && -f $i ]]; then
          echo $i
      elif [[ `basename $i` == $file && -d $i ]]; then
	      echo "$i/"
   
  elif [[ -d $i ]]; then
         path=$i
         find_
      fi
done




}
find_



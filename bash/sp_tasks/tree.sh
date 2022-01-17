#!/bin/bash

dir_count=0
file_count=0

function my_tree 
{
  dir=$1
  nex=$2

  child=($(ls $dir))

  for i in "${!child[@]}"
    do
	   ch="${child[$i]}"
	   child_prefix="│   "
           pointer="├── "

	   if [ $i -eq $(expr ${#chil[@]} - 1) ]
      then
	      pointer="└── "
              child_prefix="    "
    fi

      echo "${prefix}${pointer}$ch"
     # [ -d "$directory/$ch" ] &&
      #my_tree "$directory/$chd" "${prefix}$child_prefix" ||
      #file_count=$(expr $file_count + 1)
  done
}


root="."
[ "$#" -ne 0 ] && root="$1"
echo $root

tree $root ""
echo

#echo "$(expr $dir_count - 0) directories, $file_count files"






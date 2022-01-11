#!/bin/bash

if [[ -f $1  ]]
  then
   echo  cat $1 >> $2
elif [[ -d $1 ]]
   then
     echo cat $1 >> $2
elif [[ $1 =~ $2 ]]
   then
      echo " it's already here"
 exit
else
      echo "try again"
 fi

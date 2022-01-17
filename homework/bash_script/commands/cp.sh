#!/bin/bash

cp () {

if [[ -f $1 ]]
   then
   cat $1 > $2
elif ! [[ -f $1 ]]
   then
   echo "Error"
fi 

}
cp $1 $2


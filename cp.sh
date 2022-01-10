#!/bin/bash

cp () {

if [[ -f $1 ]]
   then
   cat $1 > $2
fi 

}
cp $1 $2


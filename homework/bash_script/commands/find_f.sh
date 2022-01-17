#!/bin/bash

find_func () {

for i in $1/*
do 
     if [[ -f $i ]]
     then 
           echo "$i"

     elif [[ -d $i ]]
     then
     
           echo "$i"
     find_func $i
      
     fi

done 

}

find_func  "$1" 

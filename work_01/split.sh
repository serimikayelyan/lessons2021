#!/bin/bash

string=$1
del=$2

for i in `grep -o . <<< "$string"`
do
      if [ "$del" == "$i" ]; then
          echo -ne "\t"
      else
	  echo -n "$i"
      fi 
done

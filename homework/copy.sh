#!/bin/bash

copy_ () {
if [[ -f $a ]]
   then
   cat $a > $b
fi 

}

echo -n "insert first file: "
read a
echo -n "insert second file: "
read b

copy_ $a $b

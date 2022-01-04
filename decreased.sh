#!/bin/bash 


a=9
 b=77
 c=55
 if    [[ $a >  $b || $a > $c ]]; then
       echo "$a"
 elif  [[ $b > $a ||  $b > $c ]]; then
       echo "$b"
 else
       echo "$c"
 fi


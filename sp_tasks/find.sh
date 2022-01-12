#!/bin/bash
my_find()
{

        for i in $1/*
         do
                if [[ $# -eq 0 ]]
                  then
                          echo "input two arguments dirname and filename"
                          exit 1
                 fi

                  last_el=${i##*/}
                if [[ -f $i && $last_el == $2  ]]
                then
                        #echo $i/$1
                        realpath $i
                        exit 1

                elif [[ -d $i ]]; then
                        echo $i
                        my_find $i $2


	         fi
    done
    

}
my_find $1 $2

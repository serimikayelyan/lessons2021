#!/bin/bash
my_find()
{


        for i in $1/*
        do
                filename=`basename $i`  
               if [[ -f $i && $filename == $2 ]]; then
                        #echo $1/$2
                        realpath $i
                elif [[ -d $i  ]]; then
                        echo $i
                        my_find $i
                fi
        done
}
my_find $1 $2
                                                                               
                

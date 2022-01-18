#!/bin/bash
my_find()
{


        for i in $1/*
        do
                filename=`basename $i`  
               if [[ -f $i && $filename == $2 ]]; then
                        realpath $i
			#echo $1/$2
                elif [[ -d $i && $filename == $2  ]]; then
                        echo $i
                        my_find $i $2 		
              
	       fi
        done
}
my_find $1 $2
                                                                               
                

#!/bin/bash 

#TODO
#copy.sh scr dest
#copy file to file + 
#copy.sh file1 path/to/dir/ +
#copy file under dir +
#copy dir to dir -

#cat 

if [ $# -lt 2 ]
then
    echo "Error: You need to give more then 2 args"
    exit 1
fi

dest=$2
if [ -d $dest ]
then 
    dest="$dest/$1"
fi

cat $1 > $dest

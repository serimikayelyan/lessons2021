#!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if    [[ $((a / b)) -eq $(( c / a )) ]]; then
       echo "true"
elif  [[ $((b / a)) -eq $(( c / b )) ]]; then
        echo "true"
elif  [[ $((a / c )) -eq $((b / a )) ]]; then
       echo "true"
elif [[ $(( b / c )) -eq $(( a / b )) ]]; then
       echo "true"
elif [[ $(( c / a )) -eq $(( b / c )) ]]; then
       echo "true"
elif [[ $(( c / b )) -eq $(( a / c )) ]]; then
        echo "true"
 else
        echo "false"
fi


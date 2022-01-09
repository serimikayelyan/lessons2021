#!/bin/bash
n=$1
mek=1
for (( i=2; i<=$n; i++ ))
do
if [[ $(( $n % $i)) -eq 0 ]]; then
    (( mek += $i ))
fi
done
echo $mek

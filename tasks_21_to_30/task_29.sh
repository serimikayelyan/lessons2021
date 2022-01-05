!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if [[ $a -gt $b ]] && [[ $a -gt $c ]]; then
        max=$a
fi
if [[ $b -gt $a ]] && [[ $b -gt $c ]]; then
        max=$b
fi
if [[ $c -gt $a ]] &&  [[ $c -gt $b ]]; then
        max=$c
fi
if [[ $a -lt $b ]] && [[ $a -lt $c ]]; then
        min=$a
fi
if [[ $b -lt $a ]] && [[ $b -lt $c ]]; then
        min=$b
fi
if [[ $c -lt $a ]] &&  [[ $c -lt $b ]]; then
        min=$c
fi
ave=$(($a+$b+$c-$max-$min))
echo $min $ave $max




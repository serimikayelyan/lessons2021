#!/bin/bash
echo "insert <a> "
read a
echo "insert <b> "
read b
echo "insert <c> "
read c
if [[ $a > $b ]] && [[ $a > $c ]]; then
	echo "<a> is bigest and equal - $a"
elif [[ $b>$a ]] && [[ $b>$c ]]; then
	echo "<b> is bigest and equal - $b"
elif [[ $c>$a ]] && [[ $c > $b ]]; then
	echo "<c> is bigest and equal -$c"
fi

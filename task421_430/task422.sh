#!/bin/bash
#!/bin/bash
declare -A matrix
m=$1
sum=0
num=0
var=0
for (( i=0;i<m;i++ ))
 do
  for (( j=0;j<m;j++ ))
    do
            matrix[$i,$j]=$RANDOM
	    #matrix[$i,$j]=$(($i+$j))
            var=${matrix[$i,$j]}
           if [[ $var%5 -eq 0  && $j<$i  ]]
            then
                     sum=$(($sum+$var))
                     num=$(($num+1))
            fi
                echo -n "${matrix[$i,$j]} "
        done
        echo
done
res=$(($sum/$num))
echo $res

#!/bin/bash


script_151 ()
{
    if [[ $a =~ ^[[:digit:]]+$ ]]; then
        for ((i = $a; i > 0; i--)); do
                        if (( $a % $i == 0 )); then
                                res=$((res+=$i))
                        fi
        done
        echo "$res"
    else
            echo "Wrong attribution"
    fi

}
script_152 () {
	res=1
	if [[ $a =~ ^[[:digit:]]+$ ]]; then
        for ((i = $a; i > 0; i--)); do
                        if (( $a % $i == 0 )); then
                                res=$(( res*=$i))
                        fi
        done
        echo "$res"
    else
            echo "Wrong attribution"
    fi


}



script_153 (){
	
    if [[ $a =~ ^[[:digit:]]+$ ]]; then
        for ((i = $a; i > 0; i--)); do
                        if (( $a % $i == 2 )); then
                                res=$(( res+=$i))
                        fi
        done
        echo " $res"
    else
            echo "Wrong attribution"
    fi
}



script_154 ()
{
	res=1
    if [[ $a =~ ^[[:digit:]]+$ ]]; then
        for ((i = $a; i > 0; i--)); do
                        if (( $a % $i == 3 )); then
                                res=$((res*=$i))
                        fi
        done
        echo " $res"
    else
            echo "Wrong attribution"
    fi
}


script_155 () {
	
	
		for (( i = 10; i < 100; i++ ))
		do
			if (( $i % 3 == 0 ));
			then
			echo $i
			
		
	
	
		
			fi

		done

}




script_156 () {
	res=1
	for (( i = 10; i < 100; i++ ))
	do
		if (( $i % 3 == 0 && $i % 5 == 0 ))
		then 
	res=$((res*=$i))	
		fi 
	done
	
echo " $res "

}


script_157 () {
	for ((  i = 100; i < 1000 ;i++ ))
	do 	
	if !(( $i % 5 == 0 ))
	then
		res=$((res+=$i))
	fi
done
echo " $res"


}
 

script_158 ()
{
	res=1
	for ((i = 100; i < 1000; i++)); do
		if !(( $i % 3 == 0 || $i % 2 == 0 )); then
			res=$((res*=$i))
		fi
	done
	echo "$res"
}





script_159 ()
{
	res=1
	for ((i = 100; i < 800; i++)); do
		if (( $i % 3 == 1 && $i % 4 == 2 )); then
			res=$((res*=$i))
		fi
	done
	echo "$res"
}




script_160 () {
	for i in {100..1000}
	do
		a=$(($i*16))
		aa=`echo "sqrt($a)" | bc`
		if [[ $(($aa*$aa)) -eq $a ]]
		then
			echo $i
			break
		fi
	done
}
 

script_161 () {

	for (( i = 1000; i < 10000 ; i++ ))
	do
		a=$(($i*26))
		aa=`echo "sqrt($a)" | bc `
		if [[ $(($aa*$aa)) -eq $a ]]
		then
			echo $i
			break
		fi
	done
}


script_162 () {
	for (( i=9999; i>1000; i-- ))
	do 
		a=$(($i*14))
		aa=`echo "sqrt($a) " | bc `
		if [[ $(($aa*$aa)) -eq $a ]]
		then 
			echo $i
			break
		fi 
	done


}

script_163 () {
	for (( i=9999; i>1000; i-- ))
   do
           a=$(($i*18))
          aa=`echo "sqrt($a)" | bc `
          if [[ $(($aa*$aa)) -eq $a ]]
           then
               echo $i
               break
          fi
 done
}





script_168()
  {
  	if [[ $a =~ ^[[:digit:]]+$ ]]; then
  		for (( i = $(( $a - 1)); i > 1; i--  ))
  		do
  			if (( $a % $i == 0 ))
  			then
  			
  			p="false"
			break
  		else 
  			p="true"
 			fi	
		done


echo $p
	fi


}



script_169 (){
	
	if [[ $a =~ ^[[:digit:]]+$ &&  $b =~ ^[[:digit:]]+$ ]];
		
	then
		sum=$(($a + $b))
		for (( i=$(( $sum - 1 )); i > 1 ; i-- ))
	do
		if (( $sum % $i == 0 ))
		then
		z=6
	else 
		z=5
		fi
	done
	fi


echo $z
}

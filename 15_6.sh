#!/bin/bash

#setting up functions for calling

add(){
    answer=$(($1 + $2))
}
sub(){
    answer=$(($1 - $2))
}
mult(){
    answer=$(($1 * $2))
}
div(){
    answer=$(($1 / $2))
}

op=$1 ; arg1=$2 ; arg2=$3

[[ $# -lt 3 ]] && \
    echo "Usage: Provide an operation (a, s, m, or d) and 2 numbers" && exit 1

[[ $op != a ]] && [[ $op != d ]] && [[ $op != s ]] && [[ $op != m ]] &&\
    echo " Operator must be a, s, d, m, not $op as supplied "

#Do the heavy lifting (Maths, very mystical!)
if [[ $op == a ]] ; then add $arg1 $arg2
elif [[ $op == s ]] ; then sub $arg1 $arg2
elif [[ $op == d ]] ; then div $arg1 $arg2
elif [[ $op == m ]] ; then mult $arg1 $arg2
else
    echo  " $op is not a, s, m, or d, aborting. Try again. " ; exit 2
fi

#Display answers

echo $arg1 $op $arg2
echo Answer is $answer


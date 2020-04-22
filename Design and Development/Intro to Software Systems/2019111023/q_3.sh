#!/bin/bash

input=`ping -4 -c $1 -s 56 google.com`;

let l=56;
let r=64;

re='^[0-9]+$';

let i=1;
while IFS= read -r line
do
    temp=$(echo "$line" | cut -d' ' -f1);
    temp2=$(echo "$line" | cut -d' ' -f2);

    if [[ $temp =~ $re ]] && [[ $temp2 == 'bytes' ]]
    then
        if (($i<=$1)) && (($temp>=$l)) && (($temp<=$r))
        then
            echo "$i. $line";
            let  i=i+1;
        else
            echo "$line";
        fi
    else
        echo "$line";
    fi

done < <(echo  "$input");


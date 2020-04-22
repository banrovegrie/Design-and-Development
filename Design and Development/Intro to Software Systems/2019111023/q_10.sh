#!/bin/bash

N=$#;
for((i=1; i<=$N; i++))
do
    j=$(echo "$i -1" | bc);
    arr[$j]=${!i};
done

#echo ${arr[*]};

for((i=0;i<$N;i++))
do
    for((j=0;j<$N-1;j++))
    do
        if ((${arr[j]}>${arr[$((j+1))]}))
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$((j+1))]};
            arr[$((j+1))]=$temp;
        fi
    done
done

#echo "Required sorted order :";
echo ${arr[*]};

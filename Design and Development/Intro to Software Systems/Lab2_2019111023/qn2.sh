#!/bin/bash

a=$(ls -p test/ | grep -v /);
for i in $a
do
    b=$(echo $i | cut -d'.' -f1)
    mv test/$i test/$b.try
    #echo $i
done
#echo ${a[*]}

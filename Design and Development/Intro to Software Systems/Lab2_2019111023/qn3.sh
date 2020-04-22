#!/bin/bash

a=0;
b=1;

echo "The Fibonacci series is : ";

for (( i=0; a<=100; i++ ))
do
    if(( $a%2==1 ))
    then
        echo -n "$a ";
    fi
    c=$((a + b));
    a=$b;
    b=$c;
done
echo "";

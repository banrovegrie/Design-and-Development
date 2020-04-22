#!/bin/bash

echo "Enter A:";
read a;

echo "Enter  B:";
read b;

if (($a>=$b))
then
    let x=a;
    let y=b;
else
    let x=b;
    let y=a;
fi

let t;
while(($y>0))
do
    let t=x;
    let x=y;
    let y=t%y;
done

echo "GCD: $x";

let c=a*b/x;
echo "LCM: $c";

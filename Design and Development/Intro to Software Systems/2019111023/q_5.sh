#!/bin/bash

echo "Please enter your SGPA:";
read n;

a=$(echo $n | cut -d'.' -f1);
b=$(echo $n | cut -d'.' -f2);

let x=5;
if (($a<$x))
then
    echo "PROBATION";
fi

let x=6;
if (($a<$x))
then
    echo "AGLE SEM PHOD DENGE";
else
    x=$(bc <<< "16-$n");
    echo "You need SGPA $x next sem";
fi

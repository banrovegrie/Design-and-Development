#!/bin/bash

if [ ${#@} -ne 2 ]
then
echo "Error! Enter correct number of  arguments";
exit 1;
fi

a=$1;
b=$2;
c=$(( a + b ));
echo "The Sum of $1 and $2 is $c";


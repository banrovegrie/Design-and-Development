#!/bin/bash

echo "Enter name:";
read a;

echo "Enter DOB:";
read b;

let c=$(echo $b | cut -d'-' -f1);
let d=$(echo $b | cut -d'-' -f2);

let ans=2020-d;
let ans=12*ans;
let ans=ans-c+1;
echo "Hello $a your age is $ans months.";

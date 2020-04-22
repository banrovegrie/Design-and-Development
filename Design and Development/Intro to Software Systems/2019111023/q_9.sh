#!/bin/bash

n=$1;

let m=n/1000;
let n=n%1000;

for((i=1;i<=m;i++))
do
    echo -n "M";
done

let m=n/900;
if (($m!=0))
then
    echo -n "CM";
fi
let n=n%900;

let d=n/500;
let n=n%500;

for((i=1;i<=d;i++))
do
    echo -n "D";
done

let d=n/400;
if (($d!=0))
then
    echo -n "CD";
fi
let n=n%400;

let c=n/100;
let n=n%100;

for((i=1;i<=c;i++))
do
    echo -n "C";
done

let c=n/90;
if (($c!=0))
then
    echo -n "XC";
fi
let n=n%90;

let l=n/50;
let n=n%50;

for((i=1;i<=l;i++))
do
    echo -n  "L";
done

let l=n/40;
if (($l!=0))
then
    echo -n "XL";
fi
let n=n%40;

let x=n/10;
let n=n%10;

for((i=1;i<=x;i++))
do
    echo -n "X";
done

let x=n/9;
if (($x!=0))
then
    echo -n "IX";
fi
let n=n%9;

let v=n/5;
let n=n%5;

for((i=1;i<=v;i++))
do
    echo -n "V";
done

let v=n/4;
if (($v!=0))
then
    echo -n "IV";
fi
let n=n%4;

for((i=1;i<=n;i++))
do
    echo -n "I";
done

echo "";

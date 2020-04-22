#!/bin/bash

red='\033[0;31m';
yellow='\033[1;33m';
blue='\033[0;34m';
reset='\033[0m';

n=`df -h | grep /dev/ | grep -v tmpfs | wc -l`;

for((i=1;i<=n;i++))
do
    let x=i+1;

    str=$(df -h | grep /dev/ | grep -v tmpfs | head -$x | tail -1 | grep -o '[^ ]*%');
    len=${#str};

    let y=len-1;
    used=$(echo $str | cut -c1-$y);

    place=$(df -h | grep /dev/ | grep -v tmpfs | head -$x | tail -1 | awk '{print $1}');

    if (($used<$1))
    then
        echo -e "${blue}OK, $place, $used%${reset}";
    elif (($used<$2))
    then
        echo -e "${yellow}WARNING, $place, $used%${reset}";
    else
        echo -e "${red}CRITICAL, $place, $used%${reset}";
    fi
done

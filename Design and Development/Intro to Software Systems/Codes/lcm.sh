#a=$1
#b=$2
read -p "Enter A:" a
read -p "Enter B:" b
lcm()
{
    local a=$1
    local b=$2
    if [ $(echo "$a > $b" | bc) -eq 1 ];
    then
        lcm=$a
    else
        lcm=$b
    fi
    prod=$(echo "$a * $b" | bc)
    #echo $prod
    while [ $(echo "$lcm <= $prod" | bc) -eq 1 ];
    do
    if ([ $(echo "$lcm % $a == 0" | bc) -eq 1 ] && [ $(echo "$lcm % $b == 0" | bc) -eq 1  ]); then
        #echo "test"
        break
    else
        lcm=$(( $lcm + 1 ))
    fi
    #echo "$lcm"
    done
    echo "$lcm"
}


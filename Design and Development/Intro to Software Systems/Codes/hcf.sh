hcf()
{
    if [ $1 -eq 0 ];
    then
        echo $2
    elif [ $2 -eq 0 ];
    then
        echo  $1
    elif [ $1 -eq $2 ];
    then
        echo $1
    elif [ $(echo "$1 > $2" | bc) -eq 1 ];
    then
        local diff=$(echo "$1 - $2" | bc)
        local val=$(hcf $diff $2)
        echo $val
    else
        local diff=$(echo "$2 - $1" | bc)
        local val=$(hcf $1 $diff)
        echo $val
    fi
}

echo $(hcf $1 $2)
#ans=$(hcf $1 $2)
#echo $ans

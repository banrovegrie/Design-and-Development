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
read -p "Enter A:" a
read -p "Enter B:" b

LCM=$(lcm $a $b)
HCF=$(hcf $a $b)
echo "GCD: $HCF"
echo "LCM: $LCM"



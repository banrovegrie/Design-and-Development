echo
if test "$1" = ""
then
    echo "No First Value Supplied:"
    exit
fi
if test "$2" = ""
then
    echo "No Second Value Supplied:"
    exit
fi
clear
echo
var=$1+$2
echo "Sum of Values" "$1+$2" '$1'+'$2' "$1"+"$2" $1+$2 var=$var
echo

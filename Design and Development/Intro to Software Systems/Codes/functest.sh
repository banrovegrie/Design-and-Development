func()
{
    if [ $(echo "$1 == 1" | bc) -eq 1 ];
    then
        echo $1
    fi
}
val=$(echo "$1 + 1" | bc)
func $val

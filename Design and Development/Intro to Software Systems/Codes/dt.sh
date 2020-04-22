read -p "Enter name:"

cur_year=$(echo $(date '+%Y-%m') | cut -d"-" -f1)
cur_mt=$(echo $(date '+%Y-%m') | cut -d"-" -f2)

giv_year=$(echo $str | cut -d"-" -f2)
giv_mt=$(echo $str | cut -d"-" -f1)

diff_year=$(echo "$cur_year - $giv_year" | bc)
diff_mt=$(echo "$cur_mt - $giv_mt" | bc)

final_mt=$(echo "($diff_year * 12) + $diff_mt" | bc)
echo $final_mt

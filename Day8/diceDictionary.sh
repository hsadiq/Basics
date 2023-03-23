#/bin/bash

declare -A count=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )


while true
do
result=$((1 + RANDOM % 6))


(( counts[$result]++))

for key in "${!counts[@]}"
do

if (( counts[$key] >=10 ))
then
echo "Number $key Reached 10 Times"
break 2
fi
done
done

max_num=1
min_num=2

for key in "${!counts[@]}"
do
if (( counts[$key]> counts[$max_num] ))
then
max_num=$key
fi
if (( counts[$key]< counts[$min_num ]))
then
min_num=$key
fi
done

echo "Number $max_num Reached Maixmum Times: ${counts[$max_num]}"
echo "Number $min_num Reached Minimum Times: ${counts[$min_num]}"

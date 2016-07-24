#!/bin/bash

dict=(a b c d e A B C D E 1 2 3 4 5 _)

dict_length=${#dict[*]}
pass=''

read -p 'Please input password length: ' num

for i in `seq $num`
do
    randomnum=`date +%s%N`
    random_rem=$[$randomnum%$dict_length]
    random_l=${dict[$random_rem]}
    pass+=$random_l
done
echo $pass

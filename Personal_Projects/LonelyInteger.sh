#!/usr/bin/bash

read N

if [[ $N == 1 ]]
then
	echo `cat`
fi

for number in `cat`
do
	numbers=("${numbers[@]}" $number)
done

printf '%s\n' ${numbers[@]} | sort | uniq -c | grep "1 " | awk '{print $NF}'

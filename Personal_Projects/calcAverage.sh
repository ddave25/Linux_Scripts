#!/usr/bin/bash

read N

sum=0

for ((i=1; i <= $N; i++))
do
	read n
	sum=$(expr $sum + $n)
done

echo $(printf %.3f $(echo "scale=4; $sum / $N" | bc -l))



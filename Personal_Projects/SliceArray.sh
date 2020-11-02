#!/usr/bin/bash

# Given a list of countries, each on a new line, your task is to read them into an array. Then slice the array and display only the elements lying between positions 3 and 7, both inclusive. Indexing starts from from 0.

index=0

while read line
do
	Country[$index]="$line"
	index=$(( index + 1 ))
done

Sub_Array=("${Country[@]:3:5}")

echo "${Sub_Array[@]}"

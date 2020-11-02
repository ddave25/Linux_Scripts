#!/usr/bin/bash

for country in `cat`
do
	countries=("${countries[@]}" $country)
done

# Copies any entries without 'A' or 'a' in the list of countries provided into another array
pattern=( ${countries[@]/[A-Z]/.} )

echo ${pattern[@]}


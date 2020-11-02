#!/usr/bin/bash

# As user input is a list, use `cat` with no filename given to get all the data
for country in `cat`
do
	countries=("${countries[@]}" $country)
done

ConcatCountries=("${countries[@]}" "${countries[@]}" "${countries[@]}")

echo ${ConcatCountries[@]}

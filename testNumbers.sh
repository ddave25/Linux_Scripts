#!/usr/bin/bash

# Get user input on separate lines
read X
read Y

# Echo user's inputs
# echo $X
# echo $Y

if [[ $X -lt $Y ]]
then
	echo "X is less than Y"
elif [[ $X -gt $Y ]]
then
	echo "X is greater than Y"
else
	echo "X is equal to Y"
fi

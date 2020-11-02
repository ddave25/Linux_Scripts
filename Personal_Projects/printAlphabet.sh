#!/usr/bin/bash

function usage()
{
	echo "Wrong usage! Get lost!"
}

[[ -z $1 ]]  && usage && exit 2

targetDir=$1

for letter in {A..z}
do
	
	foundFiles=$(du /bin/${letter}* -Lc 2> /dev/null)
	
	if [[ $? -eq 0 ]]
	then
		echo "The total size of files beginning with letter $letter is "$(du /bin/${letter}* -Lc | grep total | awk -F ' ' '{print $1}')

	else
		echo "No files beginning with $letter found"

	fi	
done

echo $filename

#!/usr/bin/bash

function usage()
{
	echo "$0 needs input parameter : target directory"
}
[[ -z $1 ]] && usage && exit 2

targetDir=$1
for alphabet in {A..Z}
do 
	lowerCase=$(echo ${alphabet} | tr [:upper:] [:lower:])
	duResult=$(du ${targetDir}/[${alphabet}${lowerCase}]* -Lc 2>&1)
	foundFiles=$(echo "${duResult}" | grep -v 'cannot access')
	if [[ $(echo "${foundFiles}" | wc -l) -gt 1 ]]
	then
		totalOnly=$(echo "${foundFiles}" | grep "total")
		echo "${alphabet}${lowerCase} ${totalOnly}"
	else
		echo "${alphabet}${lowerCase} No files or directories found"
	fi
done

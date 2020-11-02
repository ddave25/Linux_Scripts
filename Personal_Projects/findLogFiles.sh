#!/usr/bin/bash

targetDir=$1
targetFileNameStart=$USER.log.
#echo ${targetDir}
#echo ${targetFileNameStart}
#echo ${targetDir}${targetFileNameStart}

for logfile in ${targetDir}${targetFileNameStart}*
do
	year=$(echo ${logfile} | awk -F '.' '{print $3}' | awk -F '-' '{print $3}')
	#echo ${year}

	month=$(echo ${logfile} | awk -F '.' '{print $3}' | awk -F '-' '{print $2}')
	#echo ${month}

	mkdir -p ${year}.${month}
	mv ${logfile} ${targetDir}${year}.${month}
done

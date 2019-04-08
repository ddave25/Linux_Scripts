#!/usr/bin/bash

targetDir=$1
#echo ${targetDir}
vendor=$2

for index in {1..365};
do
	dateIncrease='+'$index'day';
	DATE=$(date -d ${dateIncrease} +%d-%m-%Y)
	#echo $DATE;
	bash getUniverse ${vendor} > ${targetDir}$USER.log.${DATE}
done

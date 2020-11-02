#!/usr/bin/bash

ME=$USER
targetDirectory="/data/log/${ME}"
mkdir -p ${targetDirectory}
stockExchange="NYSE"
for daysAway in $(seq 1 365)
do
	targetDate=$(date -d -${daysAway}day +%F)
	outputFileName="${targetDirectory}/${ME}.getUniverse.log.${targetDate}"
	bash ./getUniverse.sh ${stockExchange} > ${outputFileName}
done

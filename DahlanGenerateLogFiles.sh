#!/usr/bin/bash

[[ -z "$1" ]] && echo "No startDate supplied" && exit 2
[[ -z "$2" ]] && echo "No endDate supplied" && exit 3


inputStartDate=$1
inputEndDate=$2
targetDirectory=$3

startdate=$(date -I  -d  "$inputStartDate"  ) 
enddate=$(date -I -d  "$inputEndDate" )     

d="$startdate"
while [   "$(date -d "$d" +%Y%m%d)" -lt "$(date -d "$enddate" +%Y%m%d)"  ];
do

	# includes startDate 
	# echo $d
	d=$(date -I -d  "$d + 1 day"  )
	#format
	d2=$(date -d "$d" +%Y%m%d)
	
	#includes endDate
	echo $d2

	bash ./getUniverse.sh LSE > ${targetDirectory}/$USER.${d2}.log	
	        
done

#bash ./getUniverse.sh LSE > ${targetDirectory}/$USER.${startdate}.txt

#touch $(date '+%Y%m%d')

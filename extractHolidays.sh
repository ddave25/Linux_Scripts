#!/usr/bin/bash

if [[ -z $1 ]]
then
	echo "Please give a valid stock exchange"
	exit 2
fi

exchangeName=$1
year=$(date +%Y)
URL="https://www.stockmarketclock.com/exchanges/${exchangeName}/market-holidays/${year}"
urlOutput=${exchangeName}_${year}.html
finalOutput=${exchangeName}_holidays.csv
#holidayNameTag=
namesIntermed=${exchangeName}_holidayNames.txt
datesIntermed=${exchangeName}_holidayDates.txt

wget ${URL} -O ${urlOutput}

if [[ $? -ne 0 ]]
then
	echo "Stock Exchange not found"
	exit 2
fi

cat ${urlOutput} | grep '<td data-title="Observed Date">* ' | awk -F ' ' '{print $4 " " $5 " " $6}' > ${datesIntermed}

cat ${urlOutput} | grep '<td data-title="Name"> <b><a href="/exchanges/'${exchangeName}'/market-holidays/' | awk -F '">' '{print $3}' > ${namesIntermed}

#this belongs at the top, for the other intermed
#tempOutput=$(mktemp)
paste -d ',' ${datesIntermed} ${namesIntermed} | awk -F ', ' '{print $1 " " $2 ", " $3}' | awk -F ' <' '{print $1}' > ${finalOutput}

rm ${namesIntermed}
rm ${datesIntermed}


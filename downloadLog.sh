#!/usr/bin/bash
function usage {
        echo -e "usage: $0 VENDOR\neg: $0 LSE\nValid VENDOR's are LSE" >&2
        exit 1
}

test $# -eq 1||usage

VENDOR=$1
case $VENDOR in
  LSE);;
  *)usage
esac

echo `date +%T.%N` starting

#TODO setup ftp site on the nas with some sample data
OUTDIR=/sin17
#lftp -c open ftp://.....;get uni.`logname`

echo downloading universe for $VENDOR

#simulate a large file/slow connection by sleeping for 20 seconds, so that can see the value in running job in the background

for index in {1..365};
do
        dateIncrease='+'$index'day';
        DATE=$(date -d ${dateIncrease} +%d%m%Y);
        echo $DATE;
        sleep 1
        FILE=$USER.log.$DATE
done

echo "downloaded $OUTDIR/$FILE"
echo -e "VOD\nBP\nBT">$OUTDIR/$FILE

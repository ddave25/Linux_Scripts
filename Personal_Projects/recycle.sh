#!/bin/bash

function usage()
{
        echo "invalid argument."
        echo "please enter command with the following format:"
        echo "Usage: $0 [-e <emptyRecycleBinOption>][-f <forceOption>][-r <reverseOption>]  cmdTarget"
}


#Recursively creates this directory path if it does not exist.
mkdir -p ~/RecycleBin

#getopts command does not accept single or multiple characters
#the colon ":" and question mark "?" cannot be used as option characters
#getopts places the next argument in the shell commant as options variables which we call with $OPTARG
while getopts ":e:n:r:" param
do
case $param in
        e)
                rm -r ~/RecycleBin/*
                ;;
        n)
                echo "recycling ${OPTARG}..."
                zipname=$(echo ${OPTARG} | awk -F "/" '{print $NF}')
                #echo ${OPTARG} | awk -F "/" '{$NF="";print $0}' | awk -F "/" 'NF==1 {print "./"$                zip -r ${zipname} ${target}
                zip -r ${zipname}.zip ${OPTARG} > /dev/null
                mv ${zipname}.zip ~/RecycleBin/${zipname}.zip
                rm -r ${OPTARG}
                ;;
        r)
                echo "restoring file/folder..."
                unzip ${OPTARG} > /dev/null
                rm  ${OPTARG}
                ;;
        *)
                usage >&2
                ;;
esac
done

#manually shifts n strings from the parameter list.
#bash shell doesn't reset OPTIND automatically..
#this allows my script to be called again in the same session.
#shift $((OPTIND-1))

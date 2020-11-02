#!/usr/bin/bash


function newVersion
{
	

versionOriginal=$1


[[ -z $1 ]]  && return 2
 
versionNo=$(echo $versionOriginal | awk -F '_' '{print $NF}')

newVersion=$[ $versionNo+1 ]

newVersionRev=$(echo $newVersion | rev)
versionNoRev=$(echo $versionNo | rev) 
echo $versionOriginal | rev | sed "s%$versionNoRev%$newVersionRev%" | rev

}


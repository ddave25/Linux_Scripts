#!/usr/bin/bash

targetFolder = $1

ls -l ${targetFolder} | grep '^...x' | wc -l

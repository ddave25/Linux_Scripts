#!/usr/bin/bash

imput=$1
targetFolder=$2
ls -1 ${targerFolder} | tail -n ${imput} | head -n 1

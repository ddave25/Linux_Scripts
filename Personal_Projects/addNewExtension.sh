#!/usr/bin/bash
for f in *; do mv $f `basename $f`.New; done;

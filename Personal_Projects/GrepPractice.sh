#!/usr/bin/bash

# to only get sentences with the word "the" in them without "the" being part of another word
grep -w "the"

# to only get sentences with the word "the" in them, regardless of case, without "the" being part of another word
grep -i -w "the"

# to only get sentences without the words "that" in them, regardless of case
grep -v "that"

# grep lines which only have "the", "that", "those", "then" regardless of case
grep -iw 'the\|that\|those\|then'

# grep numbers which have at least 2 consecutive occurrences of the same digit even when separated by spaces
# \s* = 1 or more whitespaces in the line being "grep"-ed
grep '\([0-9]\)\s*\1'

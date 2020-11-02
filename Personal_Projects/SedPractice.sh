#! /usr/bin/bash

# For each line in a given input file, transform the first occurrence of the word 'the' with 'this'.
# The search and transformation should be strictly case sensitive.

sed 's/the /this /'

# For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. The search should be case insensitive

sed 's/thy /your /gI'

# Given an input file, in each line, highlight all the occurrences of 'thy' by wrapping them up in brace brackets.
# The search should be case-insensitive.

sed 's/thy/{&}/gI'

# Given n lines of credit card numbers, mask the first 12 digits of each credit card number with an asterisk (i.e., *) and print them.
# Each credit card number consists of four space-separated groups of four digits.

sed 's/\([0-9]\{4\}\)/****/1' | sed 's/\([0-9]\{4\}\)/****/1' | sed 's/\([0-9]\{4\}\)/****/1'

# Given an input file, with N credit card numbers, each in a new line, reverse the ordering of segments in each credit card number.
# Assume that the credit card numbers will have 4 space separated segments with 4 digits each.

sed 's/\([0-9]\{4\}\) \([0-9]\{4\}\) \([0-9]\{4\}\) \([0-9]\{4\}\)/\4 \3 \2 \1 /'

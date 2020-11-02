#!/usr/bin/bash

# Q1. Given a text file, order the lines in lexicographical order.

sort

# Q2. Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).

sort -r

# You are given a text file where each line contains a number.
# The numbers may be either an integer or have decimal places.
# There will be no extra characters other than the number or the newline at the end of each line.

# Q3. Sort the lines in ascending order i.e. first line holds numerically smallest number, last line holds numerically largest number.

sort -n

# Q4. Sort the lines in descending order i.e. first line holds numerically largest number, last line holds numerically smallest number.

sort -rn

# Q5. Rearrange the rows of the table in descending order of the values for the second column where each column is separated by a tab

sort -t$'\t' -k2 -rn

# Q6. Rearrange the rows of the table in ascending order of the values for the second column where each column is separated by a tab

sort -t$'\t' -k2 -n

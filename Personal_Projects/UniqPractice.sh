#!/usr/bin/bash

# Q1. Given a text file, remove the consecutive repetitions of any line.

uniq

# Q2. Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. Please note that the uniq -c command by itself will generate the output in a different format than the one expected here.

# Pipe to sed.
# Use s command to look for any trailing whitespaces (\s*) at beginning of line (^) and replace with ''
# Split options with /

uniq -c | sed 's/^\s*//'

# Q3. Compare consecutive lines in a case insensitive manner.
# If a line X is followed by case variants, the output should count all of them as the same (but display only the form X in the second column).

uniq -c -i | sed 's/^\s*//'

# Q4. Given a text file, display only those lines which are not followed or preceded by identical replications.

uniq -u

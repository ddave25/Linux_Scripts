#!/usr/bin/bash

# Q1. Given lines of input, print 3rd character from each line as a new line of output
# Guaranteed that each of the lines of input will have a 3rd character.

cut -c 3

# Q2. Display the 2nd and 7th character from each line of text

cut -c 2,7

# Q3. Display characters starting at 2nd position of a string and ending at 7th position (both positions included).

cut -c 2-7

# Q4. Display 1st 4 characters from each line of text

cut -c 1-4

# Q5. Given a tab delimited file with several columns (tsv format) print the first three fields.
# No need to use -d as tab is the default delimiter

cut -f 1-3

# Q6. Print the characters from thirteenth position to the end.

cut -c 13-

# Q7. Given a sentence, identify and display its fourth word. Assume that ' ' is the only delimiter between words.

cut -d ' ' -f 4

# Q8. Given a sentence, identify and display first three words. Assume that ' ' is the only delimiter between words.

cut -d ' ' -f 1-3

# Q9. Given tab delimited file with several columns (tsv format) print from second fields to last field.

cut -f 2-

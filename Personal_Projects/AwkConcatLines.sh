#!/usr/bin/bash

# NR%2 indicates odd lines
# NR%2{printf "%s;",$0;next} prints odd lines followed by a ';' and no new line
# next keyword in above statement forces awk to go to next record.
# {print;} prints next record without any formatting followed by a new line
awk 'NR%2{printf "%s;",$0;next}{print;}'

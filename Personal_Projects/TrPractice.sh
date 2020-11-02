#!/usr/bin/bash

# Q1. In a given fragment of text, replace all parentheses with box brackets

tr '()' '[]'

# Q2. In a given fragment of text, delete all the lowercase characters

tr -d "[:lower:]"

# Q3. In a given fragment of text, replace all sequences of multiple spaces with just one space.

tr -s ' '

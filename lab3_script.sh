#!/bin/bash
# Authors : Your Name & Your partner's name
# Date: 1/1/2019

# Ask for user input & store
echo "Input filename"
read filename
echo "Input regex"
read regex

# Search regex of user input within file
grep -E "$regex" $filename

# Output the regex count of match with 3 numbers, a dash, 3 numbers, dash, & 4 numbers.
grep -E -c "^(([0-9]{3})[-]([0-9]{3})[-]([0-9]{4}))" $filename

# Output regex count of match with any one character, followed by an @, any one character, then a .com.
grep -E -c "[A-Za-z0-9]+[@]+[A-Za-z0-9]+[.com]+" $filename

# Output regex match list of 303, followed by 9 more characters including numbers and dashes.
grep -E -o "^(303)[0-9-]{9}" $filename

# Find regex list of @geocities.com and redirect stream to this textfile.
grep -E "@geocities.com" $filename >> email_results.txt

# Add the textfile to this git repo
git add email_results.txt
# Commit changes
git commit -m "Staged email results textfile"


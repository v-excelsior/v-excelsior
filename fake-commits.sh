#!/bin/bash

# Make sure you're in your repo root directory
# This will create a dummy file and change it 10 times

FILE="dummy.txt"

# Create the file if it doesn't exist
if [ ! -f "$FILE" ]; then
    echo "Initial line" > $FILE
    git add $FILE
    git commit -m "Initial commit for dummy file"
fi

# Do 10 commits
for i in {1..10}
do
    echo "Change $i at $(date)" >> $FILE
    git add $FILE
    git commit -m "Automated commit #$i"
done
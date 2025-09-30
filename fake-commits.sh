#!/bin/bash

# Make sure you're in your repo root directory
# This will create a dummy file and change it N times (10–20 commits)

FILE="dummy.txt"

# Create the file if it doesn't exist
if [ ! -f "$FILE" ]; then
    echo "Initial line" > $FILE
    git add $FILE
    git commit -m "Initial commit for dummy file"
fi

# Pick random number of commits between 10 and 20
COMMITS=$(( RANDOM % 11 + 10 ))

echo "Making $COMMITS commits..."

# Do commits
for ((i=1; i<=COMMITS; i++)); do
    echo "Change $i at $(date)" >> $FILE
    git add $FILE
    git commit -m "Automated commit #$i"
done

# Push to remote
git push
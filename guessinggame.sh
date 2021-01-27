#!/usr/bin/env bash

echo -n "Guess the number of files in the current directory: "
files_count=$(ls -l | egrep "^-"| wc -l)

while read guess
do
    [[ ! $(echo $guess | egrep -o "^-?[0-9]+$") ]] && echo -n "not a number, try again: " && continue
    [[ $guess -eq $files_count ]] && echo "correct" && break
    [[ $guess -lt $files_count ]] && echo -n "too low, try again: " || echo -n "too high, try again: "
done

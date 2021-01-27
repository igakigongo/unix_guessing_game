#!/usr/bin/env bash

function get_files_count {
    echo $(ls -l | egrep "^-" | wc -l)
}

echo -n "Guess the number of files in the current directory: "
files_count=$(get_files_count)

while read guess
do
    if [[ ! $(echo $guess | egrep -o "^-?[0-9]+$") ]]; then echo -n "not a number, try again: " && continue; fi
    [[ $guess -eq $files_count ]] && echo "correct" && break
    [[ $guess -lt $files_count ]] && echo -n "too low, try again: " || echo -n "too high, try again: "
done

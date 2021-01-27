#!/usr/bin/env bash

# gets all files in the directory
# excludes hidden files and sub-directories
function get_files_in_directory {
    echo $(ls -l | egrep "^-" | wc -l)
}

echo -n "Guess the number of files in the current directory: "
files_count=$(get_files_in_directory)

while read guess
do
    if [[ $(echo $guess | egrep -o "^[0-9]+$") ]] # && [[ $guess -eq $files_count ]]
    then
        if [[ $guess -eq $files_count ]]
        then
            echo "correct" && break
        else
            [[ $guess -lt $files_count ]] && echo -n "too low, try again: " || echo -n "too high, try again: "
        fi
    else
        echo -n "not a number, try again: "
    fi
done

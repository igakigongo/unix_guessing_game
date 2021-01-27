#!/usr/bin/env bash

echo -n "Guess the number of files in the current directory: "
files_count=$(ls -l | egrep "^-"| wc -l)

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

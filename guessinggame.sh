#!/usr/bin/env bash
#File: guessinggame.sh

function start_game {
    local n=$(ls -1q | wc -l) # get list of files (one per line), then count lines
    local guess

    echo "How many files do you think there are in the current directory? "
    read guess

    while [[ $guess -ne $n ]]; do
        if [[ $guess -lt $n ]]; then
            echo "That's too low. Guess again: "
        else
            echo "That's too high. Guess again: "
        fi
        read guess
    done

    echo "That's correct! Congratulations!"
}

start_game

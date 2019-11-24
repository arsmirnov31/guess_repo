#! /usr/bin/env bash
# File: guessinggame.sh

numbers_of_files=$(ls -1 -p | grep -v / | wc -l)

function input {
echo "How many files are in the current directory"
read user_number
check_character
}


function game_begin {
if [[ $user_number -lt $numbers_of_files ]]
then 
	echo "It is too low"
	input
elif [[ $user_number -gt $numbers_of_files ]]
then
	echo "It is to high"
	input
else 
	echo "Current directory has $user_number files"
fi
}

function check_character {
if [[ $user_number =~ ^[[:digit:]]+$ ]] 
then 
	game_begin
else
 while [[ ! $user_number =~ ^[[:digit:]]+$ ]]
 do
	echo "Your input is not a number" 
	read user_number
 done
 game_begin
fi
}


check_character


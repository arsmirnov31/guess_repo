# Let try to guess how much files are there!
## This solution for home task where we need to guess how many files in current directory

This programm consists of 3 functions:

1. **input**
2. **check_character**
3. **game_begin**

First of all we get number of files and write it into variable.

```
numbers_of_files=$(ls -1 -p | grep -v / | wc -l)
```
The next step we need to handle input data. We pass control to the function **input**

```
function input {
echo "How many files are in the current directory"
read user_number
check_character
}
```
Function **input** writes input data into variable and passes control to the function **check_character**
in order to check input data. This step was added because we need work only with digits and we should prevent
to use any other characters.

Code of **check_character** is below

```
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
```

Function **check_character** has **IF** statement. Depends on what User iputed, function decides make the number re-enter 
by running the **input** function or continue the game by passing data to **game_begin** function.

Code of **check_character** is below 

```
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
``` 
Everytime when user inputed wrong number function gets hint and force input data again via **input** function
begins loop again. In case number is correct we will get message:

"Current directory has $user_number files"

Programm finishes its work!'

Thank you for attention! 
Artem !

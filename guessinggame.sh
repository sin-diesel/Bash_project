
#!/usr/bin/env bash
function get_lines { # counts the amount of files in current directory using ls to get info
	ls -a -l -G -p | egrep '^\-.*' | wc -l
}

answer=$(get_lines)
num=-1

echo "Guess how many files are in the current directory?"

while [[ ! $num -eq $answer ]]
do

read num

if [[ ! $num =~ ^[1-9]?[0-9]*$ ]]
then
	echo "Sorry, seems to be incorrect input, try again"
	num=-1
fi

if [[ ! $num -eq -1 ]] && [[ $num -lt $answer ]]
then
	echo "The answer is greater than the number you entered, try again"

elif [[ ! $num -eq -1 ]] && [[ $num -gt $answer ]]

then
	echo "The answer is less than the number you entered, try again"
fi
done

echo "Correct! Congratulations, dear Padawan!"

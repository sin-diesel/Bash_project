
#!/usr/bin/env bash
function get_lines { # counts the amount of files in current directory using ls to get info
	ls -a b-l -G -p | egrep '\-r.*' | wc -l
}

answer=$(get_lines)
num=0

while [[ ! $num -eq $answer ]]
do
echo "Guess how many files are in the current directory?"
read num
if [[ $num -lt $answer ]]
then
	echo "The answer is greater than the number you entered"
elif [[ $num -gt $answer ]]
then
	echo "The answer is less than the number you entered"
fi
done

echo "Correct! Congratulations, dear Padawan!"


function get_lines { # counts the amount of files in current directory using ls to get info
	ls -l -G -p | egrep '\-r.*' | wc -l
}

echo "Guess how many files are in the current directory?"
read num
answer=$(get_lines)
echo $answer
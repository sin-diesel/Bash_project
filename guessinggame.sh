
function get_lines { # receives name of file as an argument
	ls -l -G -p > list.txt
}

echo "Guess how many files are in the current directory?"
read num
echo "You entered: $num"
get_lines
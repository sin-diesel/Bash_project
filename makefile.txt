all:
	echo "# Bash, makefile and git project" > readme.md
	echo "**Last make run:**" >> readme.md
	date >> readme.md
	echo "Total amount of line in guessinggame.sh: " >> readme.md
	<guessinggame.sh wc -l >> readme.md


clean:
	rm readme.md
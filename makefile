README.md:
	echo "# Guessing Game\n" > README.md
	LANG=en_US date >> README.md
	echo -e "\n"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo -e "\n"

clean:
	rm README.md

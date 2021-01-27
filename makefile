README.md:
	echo "Guessing Game" > README.md
	LANG=en_US date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

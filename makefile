README.md:
	echo "#Guessing Game" > README.md
	echo ""
	LANG=en_US date >> README.md
	echo ""
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo ""

clean:
	rm README.md

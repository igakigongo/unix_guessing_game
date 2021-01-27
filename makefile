README.md:
	echo "# Guessing Game\n" > README.md
	echo "$$(LANG=en_US date)\\" >> README.md
	echo "$$(wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md

clean:
	rm README.md

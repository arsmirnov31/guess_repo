guessinggame.sh:
	curl -O https://raw.githubusercontent.com/arsmirnov31/guess_repo/master/guessinggame.sh
	

README.md: guessinggame.sh
	touch README.md
	echo "Gues_Number_of_File" >> README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md
	rm guessinggame.sh



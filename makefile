all: README.md

README.md:
	echo '# Title : UNIX WORKBENCH project by Akshay Adhao' > README.md
	echo -n '* Date and time at which this make was run: *' >> README.md
	date >> README.md
	echo -n '* The number of lines of code contained in guessinggame.sh file is: *' >> README.md
	wc -l < guessinggame.sh >> README.md

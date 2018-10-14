readme = "README.md"
script = "guessinggame.sh"

$(readme):
	echo "# Guessing Game" >$(readme)
	echo >>$(readme)
	echo "*Created at $(shell date)*" >>$(readme)
	echo >>$(readme)
	$(eval lineCount := $(shell cat $(script) | wc -l))
	echo "There are $(lineCount) lines in $(script)" >> $(readme)


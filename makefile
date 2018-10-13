readme = "README.md"
script = "guessinggame.sh"

$(readme):
	echo "h1. Guessing Game" >$(readme)
	echo "*Created at $(shell date)*" >>$(readme)
	$(eval lineCount := $(shell cat $(script) | wc -l))
	echo "There are $(lineCount) lines in $(script)" >> $(readme)


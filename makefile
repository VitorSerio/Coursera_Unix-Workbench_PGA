all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	LC_TIME=en_US date '+%A, %d %B %Y, %r %Z' >> README.md
	echo "" >> README.md
	echo "Lines in *guessinggame.sh*: $$(wc -l < guessinggame.sh)" >> README.md

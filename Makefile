
.PHONY: build ghpages clean all

all: build ghpages

build:
	jupyter-book build book

ghpages:
	ghp-import -n -p -f book/_build/html

clean: book/_build
	rm -rf book/_build

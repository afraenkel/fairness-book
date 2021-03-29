
.PHONY: build ghpages clean

build:
	jupyter-book build book

ghpages:
	ghp-import -n -p -f book/_build/html

clean: book/_build
	rm -rf book/_build

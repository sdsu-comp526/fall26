.PHONY: start build check pdf publish clean

start:
	jupyter book start

build:
	jupyter book build --html --execute

check:
	jupyter book build --html --strict

pdf:
	jupyter book build --pdf

publish: build
	ghp-import -n -p -f _build/html

clean:
	rm -rf _build
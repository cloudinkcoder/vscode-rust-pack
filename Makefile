.DEFAULT_GOAL := all
.PHONY: all test build clean publish update

all: build

test: build clean

build:
	mkdir -p .publish
	npm run package
	ls -alh .publish

clean:
	ls -alh .publish
	rm -rf .publish

publish:
	npm run publish

update:
	npm version --no-git-tag-version patch

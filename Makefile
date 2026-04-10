.DEFAULT_GOAL := all
.PHONY: all test build clean publish install update

all: build

test: build clean

build:
	mkdir -p .publish
	npm run package

clean:
	rm -rf .publish

publish:
	npm run publish

install:
	npm install

update:
	npm version --no-git-tag-version patch

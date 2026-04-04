.DEFAULT_GOAL := all
.PHONY: all test build clean publish update

all: build

test: build clean

build:
	mkdir -p .publish
	npm run build

clean:
	rm -rf .publish

publish:
	npm run publish

update:
	npm version --no-git-tag-version patch

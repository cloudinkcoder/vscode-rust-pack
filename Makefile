.DEFAULT_GOAL := all
.PHONY: all test build clean publish

all: build

test: build clean

build:
	npm run pre-build
	npm run build

clean:
	rm -rf .publish

publish:
	npm run publish


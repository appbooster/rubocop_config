all: test lint
test:
	bundle exec rspec

lint:
	bundle exec rubocop

setup:
	bin/setup

install:
	bundle exec rake install

release:
	bundle exec rake bump:set

version:
	bundle exec rake bump:current

.PHONY: all

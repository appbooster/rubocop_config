all: test lint
test:
	bundle exec rspec

lint:
	bundle exec rubocop

.PHONY: all

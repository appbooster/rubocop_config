# AppboosterRubocopConfig

[![Build Status](https://travis-ci.org/appbooster/rubocop_config.svg?branch=master)](https://travis-ci.org/appbooster/rubocop_config)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/appbooster_rubocop_config`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'appbooster_rubocop_config', github: 'appbooster/rubocop_config'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install appbooster_rubocop_config

## Usage

Configurate your project with this template.

1. `.rubocop.yml`

```yml
inherit_gem:
  appbooster_rubocop_config: default.yml

AllCops:
  TargetRubyVersion: ENTER_YOUR_RUBY_VERSION_HERE
```

1. `./spec/.rubocop.yml`

```yml
inherit_gem:
  appbooster_rubocop_config: spec.yml
inherit_from:
  - ../.rubocop.yml
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `make` to run the tests and lints. Or you can call it seperatly `make lint` for linting and `make test` for testing.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
TODO: create `make release`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/appbooster_rubocop_config.

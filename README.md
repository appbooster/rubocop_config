# AppboosterRubocopConfig

[![Build Status](https://travis-ci.org/appbooster/rubocop_config.svg?branch=master)](https://travis-ci.org/appbooster/rubocop_config)

Shared rubocop config of Appbooster organization

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'appbooster_rubocop_config'
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

After checking out the repo, run `make setup` to install dependencies.
Then, run `make` to run the tests and lints. Or you can call it seperatly `make lint` for linting and `make test` for testing.

To install this gem onto your local machine, run `make install`.
To release a new version, run `make version` to show you current version, ie `0.1.4`
Then run `make release VERSION="0.1.5"` where `VERSION` is next release version you want to push to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/appbooster/rubocop_config).

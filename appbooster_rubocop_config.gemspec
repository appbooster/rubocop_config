# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/appbooster_rubocop_config/version"

Gem::Specification.new do |spec|
  spec.name          = "appbooster_rubocop_config"
  spec.version       = AppboosterRubocopConfig::VERSION
  spec.authors       = ["Dmitriy Ivliev"]
  spec.email         = ["rootkit89@gmail.com"]

  spec.summary       = "Shared rubocop config of Appbooster organization"
  spec.homepage      = "https://github.com/appbooster/rubocop_config"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "bump", ">= 0.5.4"

  spec.add_dependency "rubocop", "~> 0.82"
  spec.add_dependency "rubocop-rspec", "~> 1.36"
end

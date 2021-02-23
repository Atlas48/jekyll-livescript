# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-livescript/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-livescript"
  spec.version       = Jekyll::LiveScript::VERSION
  spec.authors       = ["Atlas Cove","Parker Moore"]
  spec.email         = ["AtlasJan@gmx.com","parkrmoore@gmail.com"]
  spec.summary       = "A LiveScript converter for Jekyll."
  spec.homepage      = "https://github.com/jekyll/jekyll-livescript"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(%r!(lib/)!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.4.0"

  spec.add_runtime_dependency "ruby-livescript", "~> 2.2"
  spec.add_runtime_dependency "livescript-source", "~> 1.12"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "jekyll", "~> 4.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.5"
end

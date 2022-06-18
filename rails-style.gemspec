# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_style/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_style"
  spec.version       = RailsStyle::VERSION
  spec.authors       = ["Zeus WPI", "Tom Naessens"]
  spec.email         = ["silox@zeus.ugent.be"]

  spec.summary       = "Unify Rails style across Zeus Rails projects."
  spec.homepage      = "https://github.com/ZeusWPI/rails_style"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.6.0"
  spec.add_dependency "bundler", ">= 2.1.4"
  spec.add_dependency "rake"
  spec.add_dependency "rubocop-rails", "~> 2.15"
  spec.add_dependency "rubocop-rspec", "~> 2.11"
  spec.metadata["rubygems_mfa_required"] = "true"
end

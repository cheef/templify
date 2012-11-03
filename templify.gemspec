# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'templify/version'

Gem::Specification.new do |gem|
  gem.name          = "templify"
  gem.version       = Templify::VERSION
  gem.authors       = ["Ivan Garmatenko"]
  gem.email         = %w(cheef.che@gmail.ru)
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{Gem provides DSL for creating text templates}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "cucumber", '~> 1.1'
  gem.add_development_dependency "rspec", '~> 2.9'
  gem.add_runtime_dependency "activesupport", '~> 3.0'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogespec/version'

Gem::Specification.new do |spec|
  spec.name          = "dogespec"
  spec.version       = Dogespec::VERSION
  spec.authors       = ["Brent Ertz"]
  spec.email         = ["brent.ertz@gmail.com"]
  spec.summary       = %q{A dogeified RSpec formatter that spices up your specs with doge speak.}
  spec.description   = %q{such gem. wow.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "dogeify"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.99.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polish_validators/version'

Gem::Specification.new do |spec|
  spec.name          = "polish_validators"
  spec.version       = PolishValidators::VERSION
  spec.authors       = ["Damian Baćkowski"]
  spec.email         = ["damianbackowski@gmail.com"]
  spec.summary       = %q{Library to validate polish numbers: PESEL, NIP, REGON, IBAN}
  spec.description   = %q{Library to validate polish numbers: PESEL, NIP, REGON, IBAN.}
  spec.homepage      = "https://github.com/dbackowski/polish_validators"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 11.3.0"
  spec.add_development_dependency "rspec", "~> 3.5.0"
end

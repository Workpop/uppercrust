# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uppercrust/version'

Gem::Specification.new do |spec|
  spec.name          = "wp-uppercrust"
  spec.version       = Uppercrust::VERSION
  spec.authors       = ["Workpop"]
  spec.email         = ["tech@workpop.com"]
  spec.summary       = %q{Convert your JSON schema files to Mantle compatible Objective-C models}
  spec.description   = %q{Convert your JSON schema files to Mantle compatible Objective-C models}
  spec.homepage      = "https://github.com/Workpop/uppercrust"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "mustache"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
end

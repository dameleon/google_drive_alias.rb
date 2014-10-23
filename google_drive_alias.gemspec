# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_drive/alias/version'

Gem::Specification.new do |spec|
  spec.name          = "google_drive_alias"
  spec.version       = GoogleDrive::Alias::VERSION
  spec.authors       = ["takashi nagayasu"]
  spec.email         = ["ngys@g-onion.org"]
  spec.summary       = %q{GoogleDrive::Worksheet alias enhancement.}
  spec.description   = %q{GoogleDrive::Worksheet alias enhancement.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "google_drive", "~> 0.3"
  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

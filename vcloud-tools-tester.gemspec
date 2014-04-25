# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vcloud/tools/tester/version'

Gem::Specification.new do |spec|
  spec.name          = "vcloud-tools-tester"
  spec.version       = Vcloud::Tools::Tester::VERSION
  spec.authors       = ["Anna Shipman"]
  spec.email         = ["anna.shipman@digital.cabinet-office.gov.uk"]
  spec.description   = %q{Tool to facilitate testing of vCloud Tools}
  spec.summary       = %q{vCloud Tools integration tests require secret parameters. This helps you manage them.}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.14.1'
end
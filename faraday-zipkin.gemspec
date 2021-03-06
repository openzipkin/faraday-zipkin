# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday-zipkin/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday-zipkin"
  spec.version       = Faraday::Zipkin::VERSION
  spec.authors       = ["James Way, Ariel Salomon"]
  spec.email         = ["james.way@lookout.com"]
  spec.summary       = %q{Faraday middleware to generate Zipkin tracing headers.}
  spec.description   = %q{Faraday middleware to generate Zipkin tracing headers.}
  spec.homepage      = "https://github.com/openzipkin/faraday-zipkin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 0.8"
  spec.add_dependency "thrift", "~> 0.9.0"
  spec.add_dependency "finagle-thrift", "~> 1.4"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

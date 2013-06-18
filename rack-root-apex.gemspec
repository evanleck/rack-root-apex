# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/root-apex/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack-root-apex'
  spec.version       = Rack::RootApex::VERSION
  spec.authors       = ['Evan Lecklider']
  spec.email         = ['evan.lecklider@gmail.com']
  spec.description   = 'Redirects all requests with a "www" in the hostname to the non-www host version.'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/l3ck/rack-root-apex'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rack'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'symbol_call/version'

Gem::Specification.new do |spec|
  spec.name          = 'symbol_call'
  spec.version       = SymbolCall::VERSION
  spec.authors       = ['Shannon Skipper']
  spec.email         = ['shannonskipper@gmail.com']
  spec.summary       = %q{SymbolCall refines Symbol#call so Symbol#to_proc can take arguments and blocks.}
  spec.description   = %q{A Ruby 2.1+ refinement that allows Symbol#to_proc to pass args or a block via Symbol#call.}
  spec.homepage      = 'https://github.com/havenwood/symbol_call#readme'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.1'
end

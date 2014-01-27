lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbfmt/version'

Gem::Specification.new do |spec|
  spec.name = 'rbfmt'
  spec.version = Rbfmt::VERSION
  spec.authors = ['Henrik Hodne']
  spec.email = ['henrik@hodne.io']
  spec.description = 'Rbfmt formats Ruby programs'
  spec.summary = spec.description
  spec.homepage = 'https://github.com/henrikhodne/rbfmt'
  spec.license = 'MIT'

  spec.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'parser'

  spec.add_development_dependency 'bundler', '~> 1.5'
end

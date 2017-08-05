# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gettext/mote_parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'gettext-mote_parser'
  spec.version       = GetText::MoteParser::VERSION
  spec.authors       = ['Christian Kakesa']
  spec.email         = ['christian.kakesa@gmail.com']

  spec.summary       = 'GetText parser for Mote templates.'
  spec.description   = 'This gem identify message ID in Mote templates.'
  spec.homepage      = 'https://github.com/fenicks/gettext-mote_parser.'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'gettext', '~> 3.2', '>= 3.2.3'
  spec.add_runtime_dependency 'mote', '~> 1.3', '>= 1.3.0'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0'
end

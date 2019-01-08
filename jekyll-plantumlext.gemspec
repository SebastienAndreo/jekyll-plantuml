# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '2.2.2'
  s.required_ruby_version = '>= 1.9.3'
  s.name = 'jekyll-plantumlext'
  s.version = PlantUMLExt::VERSION
  s.license = 'MIT'
  s.summary = "Jekyll PlantUML Automation Extended"
  s.description = "PlantUML diagrams in Jekyll pages with link support"
  s.authors = ["Sébastien Andreo"]
  s.email = 'sebastien@andreo.eu'
  s.homepage = 'https://github.com/SebastienAndreo/jekyll-plantuml'
  #s.files = `git ls-files`.split($/)
  s.files = `ls`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE.txt]
  s.add_runtime_dependency('jekyll', '>2.0')
end

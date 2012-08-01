# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'avis/version'

Gem::Specification.new do |s|
  s.name        = 'avis'
  s.version     = Avis::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Artyom Semyonov']
  s.email       = ['sevenov@gmail.com']
  s.homepage    = 'http://github.com/arsemyonov/avis'
  s.summary     = %q{Simple client to Erlang application with Protocol Bufferts}
  s.description = %q{Simple client to Erlang application with Protocol Bufferts}

  s.rubyforge_project = 'avis'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('beefcake', '~> 0.3.7')

  s.add_development_dependency('rspec', '~> 2.10.0')
  s.add_development_dependency('yard', '~> 0.8.2')
  s.add_development_dependency('redcarpet', '~> 2.1.1')
end

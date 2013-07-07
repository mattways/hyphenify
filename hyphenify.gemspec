$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'hyphenify/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'hyphenify'
  s.version     = Hyphenify::VERSION
  s.authors     = ['Mattways']
  s.email       = ['contact@mattways.com']
  s.homepage    = 'https://github.com/mattways/hyphenify'
  s.summary     = 'Force hyphens in rails tags helpers.'
  s.description = 'Hacks rails tags helpers to always use hyphens.'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', (ENV['RAILS_VERSION'] ? "~> #{ENV['RAILS_VERSION']}" : '>= 3.0.0')
  
  s.add_development_dependency 'sqlite3'
end

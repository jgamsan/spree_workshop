# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_workshop'
  s.version     = '1.2.0'
  s.summary     = 'Manage workshops in rodaben'
  s.description = 'scaffold workshops for rodaben'
  s.required_ruby_version = '>= 1.8.7'
  s.author    = 'Jose Miguel Gamazo'
  s.email     = 'miguel.gamazo@galiclick.com'
  s.homepage  = 'http://www.spreecommerce.com'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.2.0'
end

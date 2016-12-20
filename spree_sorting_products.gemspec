# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sorting_products'
  s.version     =  '3.1.0'
  s.summary     = 'Add sorting to your product page in Spree'
  s.description = 'Add sorting to your product page in Spree'
  s.author      = 'Pablo'
  s.email       = 'pablotorre81@gmail.com'
  s.required_ruby_version = '>= 1.9.3'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'spree_core', '>= 3.1.0'
end

$:.push File.expand_path('../lib', __FILE__)

require 'has_default_value/version'

Gem::Specification.new do |s|
  s.name        = 'has_default_value'
  s.version     = HasDefaultValue::VERSION
  s.authors     = ['kami']
  s.email       = ['kami30k@gmail.com']
  s.homepage    = 'https://github.com/kami30k/has_default_value'
  s.summary     = "Set default value to Rails application's ActiveRecord model without saved."
  s.description = "Set default value to Rails application's ActiveRecord model without saved."
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2.0'
  s.add_dependency 'caller_class'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end

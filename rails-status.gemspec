$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails_status/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rails-status'
  s.version     = RailsStatus::VERSION
  s.authors     = ['Timur Vafin']
  s.email       = ['timur.vafin@flatstack.com']
  s.homepage    = ''
  s.summary     = 'Display Rails status page'
  s.description = 'Display Rails status page on /rails-status which could be used to check app health with Pingdom.'

  s.files = `git ls-files`.split($/)

  s.add_dependency 'rails', '~> 3.2.11'
  s.add_development_dependency 'mysql2'
end

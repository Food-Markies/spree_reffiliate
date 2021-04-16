Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_reffiliate'
  s.version     = '3.4.0'
  s.author      = 'Michael Davidson'
  s.email       = 'mdavo6@gmail.com'
  s.summary     = 'Spree Affiliate and Referrals extension'
  s.description = 'Configurable affiliates and referrals features for Spree'
  s.homepage    = 'https://github.com/mdavo6/spree_reffiliate'
  s.license     = 'New-BSD'

  s.required_ruby_version = '>= 2.1.0'

  s.files        = `git ls-files`.split($/)
  s.test_files   = s.files.grep(%r{^spec/})
  s.require_path = 'lib'

  s.add_dependency 'spree_core', '>= 3.2.0'

  s.add_development_dependency 'capybara', '~> 2.5'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'
  s.add_development_dependency 'database_cleaner', '~> 1.3'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker', '>= 1.25.0'
  s.add_development_dependency 'rspec-rails', '~> 3.4'
  s.add_development_dependency 'sass-rails', '~> 5.0.0'
  s.add_development_dependency 'selenium-webdriver', '>= 2.41'
  s.add_development_dependency 'simplecov', '~> 0.9.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'shoulda-callback-matchers'
end

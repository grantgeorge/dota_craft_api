source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'rails-api'
gem 'spring', :group => :development
gem 'pg'
gem "foreman"
gem "colorize"
gem 'active_model_serializers'
gem 'rack-cors', :require => 'rack/cors'

group :test, :development do
  gem 'faker',                  '1.4.2'
  gem "rspec-rails", "~> 2.0"
  gem "factory_girl_rails", "~> 4.0"
  gem "database_cleaner"
end

group :production, :staging do
  gem "rails_12factor"
  gem "rails_stdout_logging"
  gem "rails_serve_static_assets"
end

ruby "2.2.1"

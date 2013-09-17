# encoding: UTF-8

source 'https://rubygems.org'
ruby '1.9.3', engine: 'rbx', engine_version: '2.0.0.m8'

# deployment
gem 'puma'
gem 'foreman'

# heroku
gem 'newrelic_rpm'

# sinatra
gem 'sinatra', '1.4.3'

# core systems
gem 'haml'
gem 'mongoid'

group :development, :test do
  gem 'pre-commit'
  gem 'rspec' # unit testing

  # linting
  gem 'rubocop'
  gem 'pelusa'
end

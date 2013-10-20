# encoding: UTF-8

source 'https://rubygems.org'
ruby '2.0.0', engine: 'rbx', engine_version: '2.0.0.m9'

# core
gem 'sinatra', '1.4.3'
gem 'puma'
gem 'rake'
gem 'mongoid'
gem 'foreman'
gem 'therubyracer'

# assets
gem 'sinatra-assetpack'

# templating
gem 'haml'
gem 'markdown'
gem 'sass'
gem 'yajl-ruby'

# monitoring
gem 'newrelic_rpm'

# apis
gem 'tumblr_client'

group :development, :test do
  gem 'pre-commit'
  gem 'rspec' # unit testing

  # linting
  gem 'rubocop'
  gem 'pelusa'
end

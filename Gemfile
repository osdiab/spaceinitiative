# encoding: UTF-8

source 'https://rubygems.org'
ruby '1.9.3', engine: 'jruby', engine_version: '1.7.5'

# core
gem 'sinatra', '1.4.3'
gem 'puma'
gem 'rake'
gem 'mongoid'
gem 'foreman'

platforms :jruby do
  gem 'therubyrhino'
end
platforms :ruby do
  gem 'therubyracer'
end

# assets
gem 'sinatra-assetpack'
gem 'yui-compressor', require: 'yui/compressor'

# templating
gem 'haml'
gem 'markdown'
gem 'sass'
gem 'json'

# monitoring
gem 'newrelic_rpm'

# apis
gem 'tumblr_client'

group :development, :test do
  gem 'pre-commit'
  gem 'rspec' # unit testing
  gem 'rubocop' # linting
end

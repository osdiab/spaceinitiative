# encoding: UTF-8

source 'https://rubygems.org'
ruby '2.1.0', engine: 'rbx', engine_version: '2.2.1'
platforms :rbx do
  gem 'rubysl'
end

# core
gem 'sinatra', '1.4.3'
gem 'puma'
gem 'rake'
gem 'mongoid'
gem 'foreman'

# js runtime
platforms :jruby do
  gem 'therubyrhino'
end
platforms :ruby do
  gem 'therubyracer'
end

# db
gem 'sequel'

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

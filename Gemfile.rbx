# encoding: UTF-8

source 'https://rubygems.org'

# rubinius
ruby '2.1.0', engine: 'rbx', engine_version: '2.1.1'
gem 'rubysl'

# core
gem 'sinatra', '1.4.3'
gem 'puma'
gem 'rake'
gem 'mongoid'
gem 'foreman'
gem 'therubyracer'

# assets
gem 'sinatra-assetpack'
gem 'uglifier'

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
  #gem 'rubocop' # linting, disabled until Parser gets 2.1.0 support
end

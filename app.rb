# encoding: UTF-8

require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'
require 'sass'
require 'tumblr_client'
require 'newrelic_rpm'
require 'json'

# load all libs
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each do |file|
  require file
end

# Space initiative application class
class App < Sinatra::Base
  #################
  # Configuration #
  #################
  configure do
    set :tumblr_site, 'spaceinitiative.tumblr.com'
  end

  # SCSS
  set :scss, load_paths: ["#{App.root}/assets/css"]

  # Sinatra-assetpack
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack
  assets do
    serve '/js', from: 'assets/js'
    serve '/css', from: 'assets/css'
    serve '/images', from: 'assets/images'

    js :app, '/js/app.js', [
      '/js/vendor/*.js',
      '/js/lib/**/*.js'
    ]

    css :app, [
      '/css/*.css'
    ]

    js_compression  :yui
    css_compression :yui
  end

  # Tumblr
  Tumblr.configure do |config|
    config.consumer_key = ENV['SPACE_INIT_TUMBLR_OAUTH_CONSUMER']
    config.consumer_secret = ENV['SPACE_INIT_TUMBLR_OAUTH_SECRET']
    config.oauth_token = ENV['SPACE_INIT_TUMBLR_OAUTH_TOKEN']
    config.oauth_token_secret = ENV['SPACE_INIT_TUMBLR_OAUTH_TOKEN_SECRET']
  end

  run! if app_file == $PROGRAM_NAME
end

require_relative 'routes/init'

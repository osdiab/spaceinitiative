# encoding: UTF-8

require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'
require 'yajl'
require 'sass'
require 'tumblr_client'
require 'newrelic_rpm'

class App < Sinatra::Base
  #################
  # Configuration #
  #################
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  set :scss, { load_paths: [ "#{App.root}/assets/css" ] }
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

    js_compression  :uglify
    css_compression :sass
  end

  Tumblr.configure do |config|
    config.consumer_key = ENV['SPACE_INIT_TUMBLR_OAUTH_CONSUMER']
    config.consumer_secret = ENV['SPACE_INIT_TUMBLR_OAUTH_SECRET']
    config.oauth_token = ENV['SPACE_INIT_TUMBLR_OAUTH_TOKEN']
    config.oauth_token_secret = ENV['SPACE_INIT_TUMBLR_OAUTH_TOKEN_SECRET']
  end

  #########
  # Pages #
  #########

  get '/' do
    haml :'pages/index', locals: { page: 'index' }
  end

  get '/learn' do
    haml :'pages/learn', locals: { page: 'learn' }
  end

  get '/discuss' do
    haml :'pages/discuss', locals: { page: 'discuss' }
  end

  get '/events' do
    haml :'pages/events', locals: { page: 'events' }
  end

  get '/act' do
    haml :'pages/act', locals: { page: 'act' }
  end

  get '/about' do
    haml :'pages/about', locals: { page: 'about' }
  end

  get '/contact' do
    haml :'pages/contact', locals: { page: 'contact' }
  end

  get '/about_site' do
    haml :'pages/about_site', locals: { page: 'aboutSite' }
  end

  #######
  # API #
  #######

  get '/api/tumblr/posts' do
    yajl :'api/tumblr/posts'
  end

  run! if app_file == $0
end

# encoding: UTF-8

require 'compass'
require 'sinatra'
require 'yajl'
require 'newrelic_rpm'

get '/' do
  haml :'pages/index', { layout: :'layouts/index_layout' }
end

get '/learn' do
  haml :'pages/learn'
end

get '/discuss' do
  haml :'pages/discuss', locals: { page: 'discuss' }
end

get '/events' do
  haml :'pages/events'
end

get '/act' do
  haml :'pages/act'
end

get '/about' do
  haml :'pages/about'
end

get '/contact' do
  haml :'pages/contact'
end

get '/about_site' do
  haml :'pages/about_site'
end

get '/api/tumblr/posts' do
  yajl :'api/tumblr/posts'
end

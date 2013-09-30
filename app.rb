# encoding: UTF-8

require 'compass'
require 'sinatra'
require 'newrelic_rpm'

get '/' do
  haml :index
end

get '/learn' do
  haml :learn
end

get '/discuss' do
  haml :discuss
end

get '/events' do
  haml :events
end

get '/act' do
  haml :act
end

get '/about' do
  haml :about
end

get '/contact' do
  haml :contact
end

get '/about_site' do
  haml :'about_site'
end

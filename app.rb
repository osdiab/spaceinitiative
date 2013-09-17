# encoding: UTF-8

require 'sinatra'

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  haml :index
end

# encoding: UTF-8

# Page routes
class App < Sinatra::Base
  get '/' do
    haml 'pages/index'.to_sym, locals: { page: 'index' }
  end

  get '/learn' do
    haml 'pages/learn'.to_sym, locals: { page: 'learn' }
  end

  get '/discuss' do
    haml 'pages/discuss'.to_sym, locals: { page: 'discuss' }
  end

  get '/events' do
    haml 'pages/events'.to_sym, locals: { page: 'events' }
  end

  get '/act' do
    haml 'pages/act'.to_sym, locals: { page: 'act' }
  end

  get '/about' do
    haml 'pages/about'.to_sym, locals: { page: 'about' }
  end

  get '/mission' do
    haml 'pages/mission'.to_sym, locals: { page: 'mission' }
  end

  get '/contact' do
    haml 'pages/contact'.to_sym, locals: { page: 'contact' }
  end

  get '/about_site' do
    haml 'pages/about_site'.to_sym, locals: { page: 'aboutSite' }
  end
end

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

  get '/people' do
    haml 'pages/people'.to_sym, locals: { page: 'people' }
  end

  get '/join' do
    haml 'pages/join'.to_sym, locals: { page: 'join' }
  end

  get '/projects' do
    require_lib 'models/Project'
    projects = Project.all.reverse
    haml 'pages/projects'.to_sym, locals: { page: 'projects',
                                            projects: projects }
  end

  get '/about' do
    haml 'pages/about'.to_sym, locals: { page: 'about' }
  end

  get '/contact' do
    haml 'pages/contact'.to_sym, locals: { page: 'contact' }
  end

  get '/about_site' do
    haml 'pages/about_site'.to_sym, locals: { page: 'about_site' }
  end
end

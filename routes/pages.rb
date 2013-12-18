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
    haml 'pages/people'.to_sym, locals: {page: 'people'}
  end

  get '/join' do
    haml 'pages/join'.to_sym, locals: { page: 'join' }
  end

  get '/projects' do
    projects = get_projects
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

  #TODO: get rid of this with proper database support
  def get_projects
    require_relative '../lib/model/Project'

    projects = Array.new
    projects << Project.new('High Altitude Balloon Group',
      'The SSI HAB group conducts multiple high-altitude balloon launches a quarter and gives students an opportunity to design, build, and fly projects on their own or in collaboration with others. The group is constantly improving the efficiency and reliability of launches, as well as developing new experiments and capabilities to fly. The group has launched 2 balloons already this year and have plans to launch two more this coming quarter, including potential nighttime and multi-balloon launches.',
      'Charlie Cox',
      'ccox13@stanford.edu')

    projects << Project.new('Satellites',
      'The SSI satellite team is building and prototyping CubeSats that will image other satellites during deployment and send pictures of it back to Earth in collaboration with the Stanford Space Systems Laboratory. Doing everything from the processing boards to the antenna to the structure and flight software, the team is developing an entire process that builds off novel technologies.',
      'Andrew Ow',
      'andrew.ow@gsb.stanford.edu')

    projects << Project.new('Rockets',
      'Our rockets group is currently working on two projects involving both solid and liquid rocket motors. Our solid rocket team is focusing on smaller scale solid rockets that can be quickly designed, built and launched and provide students the opportunity to learn rocket systems hands-on. The liquid rocket team is in the process of designing a more ambitious liquid oxygen and liquid methane rocket with the goal of reaching ground tests and launch by spring and summer of next year.',
      'Ben Todd',
      'bentodd@stanford.edu')

    projects << Project.new('Aeromedicine and Zero-G Experiment Team',
      'The Aeromedicine and Zero-G Experiment Team aims to increase interest in current space-related medical issues and research by performing zero-gravity, high altitude balloon, and ISS experiments and working with both NASA Ames and the Stanford Medical School.',
      'Paul Warren',
      'pwarren@stanford.edu')

    projects << Project.new('Space Entrepreneurship Class',
      'The goal of the class is to educate students in the possibilities of space entrepreneurship by exploring current space startups, companies, and government initiatives relating to the space industry. Through a series of lectures and interactive seminars expelling myths, promoting possibilities, and teaching the “how to” for space entrepreneurship, we hope to inspire and provide students with the tools and network to make the first step into the exciting industry.',
      'Hao Yi Ong',
      'haoyi@stanford.edu')

    projects
  end
end

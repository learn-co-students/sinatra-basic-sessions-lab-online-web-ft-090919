require_relative 'config/environment'

class App < Sinatra::Base
    configure do
    enable :sessions
    set :session_secret, "C3MB6LALZ2"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    erb :index
  end
end

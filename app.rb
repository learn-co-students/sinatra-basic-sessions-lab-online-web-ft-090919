require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, SecureRandom.hex
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    erb :cart
  end

end

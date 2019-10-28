require_relative 'config/environment'

enable :sessions
set :session_secret, "rockjockjayhawk"
class App < Sinatra::Base

get '/' do
  erb :index
  end

  post '/checkout' do

    session[:item] = params[:item]
    @session = session
    erb :checkout
  end
end

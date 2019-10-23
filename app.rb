require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    configure do 
        enable :sessions 
        set    :session_secret, "12345"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        @session = session 
        @session[:item] = params[:item]
        binding.pry
        erb :show
        
    end
end  
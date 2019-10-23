ENV['SINATRA_ENV'] ||= "development"

require 'securerandom'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'

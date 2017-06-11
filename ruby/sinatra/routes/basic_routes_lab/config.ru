ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'

# the name of the app (PuttanescaApp) should match what's in app.rb
run PuttanescaApp

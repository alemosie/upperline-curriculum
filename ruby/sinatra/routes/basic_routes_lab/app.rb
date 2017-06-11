# to run:
  # 1. type "bundle install" in your terminal
  # 2. type "shotgun" in your terminal
  # 3. go to the localhost link in your browser to see the app in action!

require 'sinatra'

class PuttanescaApp < Sinatra::Base

  get '/' do
    erb :'index'
  end
end

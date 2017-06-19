require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/results" do
    phrase = Reverser.new(params["user_phrase"])
    @results = phrase.reverse
    erb :results
  end
end

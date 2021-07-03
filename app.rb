require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize'do
    p1 = PigLatinizer.new
    @pigLatinizer = p1.piglatinize(params[:word])
    erb :piglatinize
end
end
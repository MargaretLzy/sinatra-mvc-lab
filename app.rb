require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    p1 = PigLatinizer.new
    @pigLatinize = p1.piglatinize(params[:user_phrase])
    erb :piglatinize
end
end
require 'sinatra/base'

class RPS < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:player_1_name]
    erb :welcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra'

class Battle < Sinatra::Base
  get '/test' do
    erb :infrastructure_test
  end
  
  get '/' do
    erb :players
  end

  post '/menu' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :menu
  end
end

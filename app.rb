require 'sinatra'
require './lib/player'

class Battle < Sinatra::Base

  # enable :sessions

  get '/test' do
    erb :infrastructure_test
  end

  get '/' do
    erb :players
  end

  get '/Play' do
    # p session
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb :Play
  end

  post '/names' do
    $player_1 = Player.new(params[:player1_input])
    $player_2 = Player.new(params[:player2_input])
    redirect "/Play"
  end

  get '/attack' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb :attack
  end

end

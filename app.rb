require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/test' do
    erb :infrastructure_test
  end

  get '/' do
    erb :players
  end

  get '/Play' do
    p session
    @player1 = session[:params][:player1]
    @player2 = session[:params][:player2]
    erb :Play
  end

  post '/names' do
    session[:params] = params
    redirect "/Play"
  end

  get '/attack' do
    @player1 = session[:params][:player1]
    @player2 = session[:params][:player2]
    erb :attack
  end

end

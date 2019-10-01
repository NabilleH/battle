require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/test' do
    erb :infrastructure_test
  end

  get '/' do
    erb :players
  end

  get '/menu' do
    p session
    @player1 = session[:params][:player1]
    @player2 = session[:params][:player2]
    erb :menu
  end

  post '/names' do
    session[:params] = params
    redirect "/menu"
  end

end

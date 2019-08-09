require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions
  get "/" do
    erb :index
  end

  post "/names" do
    session[:P1name] = params[:Player_1_name]
    session[:P2name] = params[:Player_2_name]
    redirect '/play'
  end

  get "/play" do
    @p1name = session[:P1name]
    @p2name = session[:P2name]
    erb :play
  end

  get "/p1attackedp2" do
    @p1name = session[:P1name]
    @p2name = session[:P2name]
    erb :attacked
  end

  run! if app_file == $0
  
end
require 'sinatra/base'
require_relative "player.rb"
require_relative "game.rb"

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = params[:player1]
    player2 = params[:player2]
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @player1_HP = $game.player1.HP
    @player2_HP = $game.player2.HP
    erb(:play)
  end

  get '/attack' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.attack($game.player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end

require 'sinatra/base'
require_relative "player.rb"
require_relative "game.rb"

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = params[:player1]
    player2 = params[:player2]
    @game = Game.create(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    erb(:attack)
  end

  post '/switch-turns' do
    if !@game.players.last.dead?
      @game.turn
      redirect('/play')
    else
      redirect('/end_game')
    end
  end

  get '/end_game' do
    erb(:end_game)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end

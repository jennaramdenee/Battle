require './lib/player'

class Game

  attr_reader :player1, :player2, :players

  def initialize(player1, player2, klass)
    @player1 = klass.new(player1)
    @player2 = klass.new(player2)
    @players = [@player1, @player2]
  end

  def attack
    attacked_player = @players.last
    attacked_player.receive_attack
  end

  def turn
    @players.reverse!
  end

end

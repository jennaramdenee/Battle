require './lib/player'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2, klass)
    @player1 = klass.new(player1)
    @player2 = klass.new(player2)
  end

  def attack(player)
    player.receive_attack
  end

end

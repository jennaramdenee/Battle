require './lib/game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  it "responds to a method called attack with one argument" do
    expect(game).to respond_to(:attack).with(1).argument
  end

  it "can attack a player" do
    allow(player1).to receive(:receive_attack)
    expect(player1).to receive(:receive_attack)
    game.attack(player1)
  end

end

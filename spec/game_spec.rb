require './lib/game'

describe Game do

  subject(:game) { described_class.new(player1, player2, klass) }
  let(:klass) { double(:klass) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  let(:player) { double(:player) }

  before { allow(klass).to receive(:new).and_return(player) }

  it "creates two players on initialization" do
    expect(game.player1).not_to be nil
    expect(game.player2).not_to be nil
  end

  it "responds to a method called attack with one argument" do
    expect(game).to respond_to(:attack)
  end

  it "can attack a player" do
    allow(player).to receive(:receive_attack)
    expect(player).to receive(:receive_attack)
    game.attack
  end

  it "stores players in an array" do
    expect(game.players).to eq [game.player1, game.player2]
  end

  it "ends a turn" do
    expect(game.turn).to eq [game.player2, game.player1]
  end

end

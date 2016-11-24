require './lib/game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  it "responds to a method called attack with one argument" do
    expect(game).to respond_to(:attack).with(1).argument
  end





end

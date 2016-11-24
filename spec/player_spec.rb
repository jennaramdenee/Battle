require "player"

describe Player do

  subject(:player) { described_class.new("Jenna") }

  it "returns its name" do
    expect(player.name).to eq("Jenna")
  end

  it "sets a default HP to 60" do
    expect(player.HP).to eq described_class::DEFAULT_HP
  end

  it "responds to a method called receive_attack" do
    expect(player).to respond_to(:receive_attack)
  end

  it "deducts 10 points every time a player receives an attack" do
    expect{player.receive_attack}.to change{player.HP}.by(-10)
  end

end

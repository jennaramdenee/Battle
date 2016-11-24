require "player"

describe Player do

  subject(:player) { described_class.new("Jenna") }

  it "returns its name" do
    expect(player.name).to eq("Jenna")
  end

  it "sets a default HP to 60" do
    expect(player.HP).to eq described_class::DEFAULT_HP
  end

end

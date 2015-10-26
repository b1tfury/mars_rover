require "Plateau"

describe Plateau,"#limits" do
  it "should have limits" do
    expect(Plateau.new([5,5]).limits).to eq([5,5])
  end
end

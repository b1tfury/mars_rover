require "Plateau"

describe Plateau,"#limits" do
  it "should have limits" do
    expect(Plateau.new([5,5]).limits).to eq([5,5])
  end
  it "should raise error if limits are not given" do
    expect{Plateau.new.limits}.to raise_error(RuntimeError, "upper limits are not given for plateau")
  end
end

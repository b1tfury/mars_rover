require "Rover"

describe Rover,"#position" do
  it "should have some intial position" do
    expect(Rover.new([1,2]).position).to eq([1,2])
  end

 it "should raise error if no position is given" do
    expect{Rover.new.position}.to raise_error(RuntimeError,"Position not found")
  end
end

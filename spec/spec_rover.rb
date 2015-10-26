require "Rover"

describe Rover,"#position" do
  it "should have some intial position" do
    expect(Rover.new([1,2,"N"]).position).to eq([1,2,"N"])
  end

 it "should raise error if no position is given" do
    expect{Rover.new.position}.to raise_error(RuntimeError,"Position not found")
  end
end


describe Rover,"#move" do
  it "should raise error if no command is given" do
    expect{Rover.new([1,2,"N"]).move}.to raise_error(RuntimeError,"no command given")
  end
  it "should move foreward " do
    rov = Rover.new([1,2,"N"])
    expect(rov.move("M")).to match_array([1,3,"N"])
  end
  it "should turn right if R is provided" do
    expect(Rover.new([1,2,"N"]).move("R")).to eq([1,2,"E"])
  end

  it"should turn left if L is provided" do
    expect(Rover.new([1,2,"N"]).move("L")).to eq([1,2,"W"])
  end
end

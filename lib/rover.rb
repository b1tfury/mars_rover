class Rover
  def initialize(position = nil)
    @position = position
  end

  def position
    if @position == nil
      raise "Position not found"
    else
      @position
    end
  end

  def move(command= nil)
    if command == nil
      raise "no command given"
    elsif command=="M"
      if @position[2]=="N"
        @position[1] += 1
      elsif @position[2] == "S"
        @position[1] -= 1
      elsif @position[2] == "E"
        @position[0] -= 1
      else
        @position[0] += 1
      end
    elsif command == "R"
      if @position[2] =="N"
        @position[2] = "E"
      elsif @position[2]  =="S"
        @position[2] = "W"
      elsif @position == "E"
        @position[2] = "S"
      else
        @position[2] = "N"
      end
    else
      if @position[2] =="N"
        @position[2] = "W"
      elsif @position[2]  =="S"
        @position[2] = "E"
      elsif @position == "E"
        @position[2] = "N"
      else
        @position[2] = "S"
      end
    end
    @position
  end

end

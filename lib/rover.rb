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
    end
  end
end

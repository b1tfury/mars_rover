require "mars_rover/version"
require "Plateau"
require "Rover"
require "stringio"

module MarsRover
  # Your code goes here..
  limits = $stdin.gets
  limits = limits.split(" ")
  limits[0] = limits[0].to_i
  limits[1]= limits[1].to_i
  plateau = Plateau.new([limits[0],limits[1]])

  initial_pos = $stdin.gets
  initial_pos = initial_pos.split(" ")
  initial_pos[0] = initial_pos[0].to_i
  initial_pos[1] = initial_pos[1].to_i
  rover = Rover.new(initial_pos)
  if plateau.limits[0] >= initial_pos[0] && plateau.limits[1] >= initial_pos[1]
    commands = $stdin.gets
    commands = commands.split("")
    commands.each do |command|
      rover.move(command)
      if rover.position[0] > plateau.limits[0] || rover.position[1] > plateau.limits[1]
        raise "Rover moved out of plateau"
      end
    end
    else
      raise "Initial position of rover cannot be outseid plateau"
  end
  puts rover.position
end

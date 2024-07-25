require_relative 'toy_car'

class Robot < ToyCar
  def functions
    super
    "Robot can fly!"
  end
end

robot = Robot.new
puts robot.functions
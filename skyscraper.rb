require_relative 'building'

class Skyscraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    # @name = name
    # @width = width
    # @length = length
    @height = height
  end

  def type_of_owner
    if @height > 50
      "this #{capitalized_name} is for Spider-Man"
    else
      "this #{capitalized_name} is for beginners"
    end
  end

  def capitalized_name
    @name.capitalize
  end
end

empire_state = Skyscraper.new("Empire State Building", 30, 40, 70)
puts empire_state.type_of_owner
class Butler
  attr_reader :name

  def initialize(castle, name)
    @castle = castle
    @name = name
  end

  def clean_castle
    puts "#{@castle.name} is cleaned!"
  end
end

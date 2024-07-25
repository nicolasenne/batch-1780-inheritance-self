# require_relative 'building'

# class Castle < Building
#   attr_accessor :moat
#   attr_reader :butler

#   def self.categories
#     return ["Medieval", "Norman", "Ancient"]
#   end

#   def has_a_moat?
#     @moat == true
#   end

#   def floor_area
#     super + 300 # => @width * @length + 300
#   end
# end

# # new_castle = Castle.new("Castelo Le Wagon", 200, 300)
# # puts new_castle.name
# # puts new_castle.floor_area
# # new_castle.moat = true
# # puts new_castle.has_a_moat?

# puts Castle.categories

require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_reader :butler, :ruler_name

  def initialize(name, width, length, ruler_name)
    super(name, width, length)
    # @name = name
    # @width = width
    # @length = length
    @ruler_name = ruler_name
    @butler = Butler.new(self, "John")
  end

  def ruler 
    "#{@name} is ruled by #{@ruler_name.capitalize}"
  end
end

le_wagon_castle = Castle.new("Le Wagon Castle", 100, 200, "Dudu")


puts le_wagon_castle.name
puts le_wagon_castle.floor_area
puts le_wagon_castle.ruler_name
puts le_wagon_castle.butler.name
puts le_wagon_castle.butler.clean_castle
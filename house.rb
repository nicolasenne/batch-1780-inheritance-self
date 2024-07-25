require_relative 'building'

class House < Building
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Belo Horizonte" then 20000
    else raise Exception.new("No data for #{city}")
    end
  end
end

# new_house = House.new("Le Wagon House", 20, 30)
# puts new_house.name
# puts new_house.floor_area

puts House.price_per_square_meter("Belo Horizonte")
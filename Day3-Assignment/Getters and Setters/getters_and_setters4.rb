# Getters and Setters

class Car
  attr_accessor :brand

  def initialize(brand)
    @brand = brand
  end
end

c = Car.new("Toyota")
puts c.brand
c.brand = "Honda"
puts c.brand
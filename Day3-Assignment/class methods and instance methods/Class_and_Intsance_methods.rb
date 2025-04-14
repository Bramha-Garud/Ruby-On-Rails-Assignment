# Class Methods and instance methodsc

class Calculator
  def initialize(a, b)
    @a = a
    @b = b

  end

  #Instance method - works on instance variables
  def add
    @a + @b
  end

  # Class method - general utility
  def self.pi
    3.14159
  end
end

puts Calculator.pi

calc = Calculator.new(10, 5)
puts calc.add
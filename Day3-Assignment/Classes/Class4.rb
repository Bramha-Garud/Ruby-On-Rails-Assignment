# Class

class Vehicle
  def start
    puts "Vehicle started"
  end
end

class Car < Vehicle
  def drive
    puts "Car is driving"
  end
end

c = Car.new
c.start
c.drive
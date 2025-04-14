# Class

class Animal
  def speak
    puts "Animal speaks"
  end

end

class Dog < Animal
  def speak
    puts "Dog Barks"
  end
end

a = Animal.new
a.speak

d = Dog.new
d.speak
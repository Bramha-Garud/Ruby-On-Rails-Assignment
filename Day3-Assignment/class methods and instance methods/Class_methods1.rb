# Class Methods and instance methods

def make_sound(animal)
  animal.speak
end

class Cat
  def speak
    puts "Meow"
  end
end

class Cow
  def speak
    puts "Moo"
  end
end

make_sound(Cat.new)
make_sound(Cow.new)
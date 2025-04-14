# Class Methods and instance methods

class Dog
  #Instance method
  def bark
    puts "Woof! I'm an instance method"
  end

  #class method
  def self.info
    puts "I'm a class method of Dog"
  end
end

#Calling instance method
d = Dog.new
d.bark

#Calling class method
Dog.info
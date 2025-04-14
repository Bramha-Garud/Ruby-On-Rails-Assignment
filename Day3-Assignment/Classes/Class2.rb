# Class

class Person
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name(new_name)
    @name = new_name
  end

  private

  def secret
    puts "This is a secret"
  end
end

p = Person.new("Alice")
puts p.get_name
p.set_name("Bob")
puts p.get_name


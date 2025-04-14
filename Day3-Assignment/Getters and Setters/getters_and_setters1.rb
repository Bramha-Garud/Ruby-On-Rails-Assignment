# Getters and Setters

class Student
  def initialize(name)
    @name = name
  end

  # Getter method
  def name
    @name
  end

  # Setter method
  def name=(new_name)
    @name = new_name
  end
end

s = Student.new("Alice")
puts s.name
s.name = "Bob"
puts s.name
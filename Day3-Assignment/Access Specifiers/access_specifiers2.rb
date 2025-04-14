# Access Specifiers 

class Person
  def show
    secret_message
  end

  private
  
  def secret_message
    puts "This is a private method"
  end
end

p = Person.new
p.show
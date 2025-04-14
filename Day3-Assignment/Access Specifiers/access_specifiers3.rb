# Access Specifiers 

class Employee
  def initialize(salary)
    @salary = salary
  end

  def better_paid_than?(other)
    self.salary > other.salary
  end

  protected

  def salary
    @salary
  end
end

e1 = Employee.new(50000)
e2 = Employee.new(40000)

puts e1.better_paid_than?(e2)
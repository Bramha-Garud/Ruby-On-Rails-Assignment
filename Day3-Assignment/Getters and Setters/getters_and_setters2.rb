# Getters and Setters

class Book
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

b = Book.new("Ruby Basics")
puts b.title

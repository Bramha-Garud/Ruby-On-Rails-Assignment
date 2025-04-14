# Getters and Setters

class Book
  attr_writer :title

  def initialize(title)
    @title = title
  end
end

b = Book.new("Ruby Basics")
b.title = "New Title"
def school_level(grade)
  case grade
  when 1..5
    "Elementry School"
  when 6..8
    "Middle School"
  when 9..12
    "High School"
  else
    "College"
  end
end

print "Enter your grade:"
grade = gets.chomp.to_i

puts "You are in: #{school_level(grade)}"
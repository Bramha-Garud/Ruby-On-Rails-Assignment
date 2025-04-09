def is_prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

print "Enter a number: "
num = gets.chomp.to_i

if is_prime?(num)
  puts "#{num} is a prime number."
else
  puts "#{num} is not a prime number."
end


#4. Regex for mobile number, email address, name, gender(M / F) and  amount

def check_input(val, regex, field_name)
  if val.match?(regex)
    puts "#{field_name} is valid."
  else
    puts "#{field_name} is invalid"
  end
end

MOBILE_REGEX = /^[789]\d{9}$/
EMAIL_REGEX = /^[a-z0-9]+@[a-z]+.com$/
NAME_REGEX = /^[A-Za-z ]+$/
GENDER_REGEX = /^[MF]$/
AMOUNT_REGEX = /^\d+(\.\d{1, 2})?+$/

# check_input("7448265100", MOBILE_REGEX, "Mobile Number")
# check_input("bramha@gmail.com", EMAIL_REGEX, "Email")
# check_input("bramha", NAME_REGEX, "Name")
# check_input("M", GENDER_REGEX, "Gender")
# check_input("1500.00", AMOUNT_REGEX, "Amount")


puts "Enter Which Opearation Regex do you want to perform"
puts "1.MOBILE_REGEX"
puts "2.EMAIL_REGEX"
puts "3.NAME_REGEX"
puts "4.GENDER_REGEX"
puts "5.AMOUNT_REGEX"
ch = gets.chomp

if ch == Integer
  case ch 
  when 1
    puts "Enter Mobile No"
    mob_no = gets.chomp.to_i
    check_input(mob_no, MOBILE_REGEX, "Mobile Number")

  when 2
    puts "Enter Email"
    email = gets.chomp.to_s
    check_input(email, EMAIL_REGEX, "Email")

  when 3
    puts "Enter Name"
    name = gets.chomp.to_s
    check_input(name, NAME_REGEX, "Name")

  when 4
    puts "Enter Gender"
    gender = gets.chomp.to_c
    check_input(gender, GENDER_REGEX, "Gender")
    
  when 5
    puts "Enter Amount"
    amt = gets.chomp.to_i
    check_input(amt, AMOUNT_REGEX, "Amount")
  end
  
else
  puts "Invalid input"
  
end


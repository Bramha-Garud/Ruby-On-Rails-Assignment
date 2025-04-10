4. Regex for mobile number, email address, name, gender(M / F) and  amount

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
AMOUNT_REGEX = /^\d+$/

check_input("7448265100", MOBILE_REGEX, "Mobile Number")
check_input("bramha@gmail.com", EMAIL_REGEX, "Email")
check_input("bramha", NAME_REGEX, "Name")
check_input("M", GENDER_REGEX, "Gender")
check_input("1500.00", AMOUNT_REGEX, "Amount")

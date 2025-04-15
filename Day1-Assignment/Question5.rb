#5. Write a program to find IP address class

def ip_address_class(ip)

  octet = ip.split('.').first.to_i

  case octet

  when octet == 1..126
    return "Class A"
    
  when octet == 128..191
    return "Class B"
    
  when octet == 192..223
    return "Class C"
    
  when octet == 224..239
    return "Class D"

  when octet == 240..255
    return "Class E"
  end
end

print "Enter ip Address"
ip_add = gets.chomp

puts "Class -> #{ip_address_class(ip_add)}"

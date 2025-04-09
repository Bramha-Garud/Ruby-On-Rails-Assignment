def ip_address_class(ip)

  octet = ip.split('.').first.to_i

  if octet == 1..126
    return "Class A"
    
  end

  if octet == 128..191
    return "Class B"
    
  end

  if octet == 192..223
    return "Class C"
    
  end

  if octet == 224..239
    return "Class D"
    
  end

  if octet == 240..255
    return "Class E"
    
  end
  
end

print "Enter ip Address"
ip_add = gets.chomp

puts "Class -> #{ip_address_class(ip_add)}"
require_relative 'Assesment/country'
require_relative 'Assesment/loan_eligibility'
require_relative 'Assesment/un_eligibility'
require_relative 'Assesment/war_power'

countries = Country.all

countries.each_with_index do |c, i|
  puts "#{i + 1}. #{c.name}"
end

print "Choose a country (1 - #{countries.size}):"
choice = gets.chomp.to_i
country = countries[choice - 1]

puts "\n Country: #{country.name}"
puts "Population: #{country.population}"
puts "GDP: #{country.gdp}"
puts "States: #{country.states}"
puts "Army Strength: #{country.army_strength}"
puts "Development Status: #{country.development_status}"
puts "-------------------------------------------------------"

puts "IMF/WB Loan Eligible? #{country.eligible_for_loan? ? 'Yes' : 'No'}"
puts "UN Security Concil Sear? #{country.eligible_for_un_seat? ? 'Yes' : 'No'}"
puts "War Potential: #{country.war_ready? ? 'High' : 'Low'}"
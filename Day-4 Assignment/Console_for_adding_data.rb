require_relative 'Assesment/country'
def get_country_form_user
  print "Enter The Country Name: "
  $name = gets.chomp

  print "Enter Population: "
  $population = gets.chomp.to_i

  print "Enter GDP: "
  $gdp = gets.chomp.to_i

  print "Enter number of States: "
  $states = gets.chomp.to_i

  print "Enter army strength: "
  $army_strength = gets.chomp.to_i

  print "Enter development status (developed / developing): "
  $development_status = gets.chomp.downcase

end
  class CountryData
    
    def initialize(name:, population:, gdp:, states:, army_strength:, development_status:)
      @name = name
      @population = population
      @gdp = gdp
      @states = states
      @army_strength = army_strength
      @development_status = development_status
    end

    def to_hash
      {
        name: @name,
        population: @population,
        gdp: @gdp,
        states: @states,
        army_strength: @army_strength,
        development_status: @development_status
      }
    end

  end

  get_country_form_user

  MyData = CountryData.new(name: $name, population: $population, gdp: $gdp, states: $states, army_strength: $army_strength, development_status: $development_status)

  file_path = 'data/countries.json'

  if File.exist?(file_path)
    file = File.read(file_path)
    data = JSON.parse(file, symbolize_names: true)
  end

  data << MyData.to_hash

  File.write(file_path, JSON.pretty_generate(data))
  puts "Country Saved Successfully"

require 'json'
require_relative 'country'
require_relative 'loan_eligibility'
require_relative 'un_eligibility'
require_relative 'war_power'



class Country 

  include LoanEligibility
  include UNElegibility
  include WarPotential

  attr_accessor :name, :population, :gdp, :states, :army_strength, :development_status

  def initialize(data)
    @name = data["name"]
    @population = data["population"]
    @gdp = data["gdp"]
    @states = data["states"]
    @army_strength = data["army_strength"]
    @development_status = data["development_status"]
  end

  def self.all
    file = File.read('data/countries.json')
    JSON.parse(file).map { |data| Country.new(data) }
  end
end


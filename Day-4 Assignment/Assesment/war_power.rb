module WarPotential
  def war_ready?
    army_strength > 100000 && population > 10000000
  end
end
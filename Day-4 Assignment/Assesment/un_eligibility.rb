module UNElegibility
  def eligible_for_un_seat?
    gdp > 500000000000&& army_strength > 100000 && development_status == 'developed'

  end
end
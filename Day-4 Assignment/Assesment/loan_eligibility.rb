module LoanEligibility
  def eligible_for_loan?
    gdp < 100000000000 || development_status == "developing"
  end
end
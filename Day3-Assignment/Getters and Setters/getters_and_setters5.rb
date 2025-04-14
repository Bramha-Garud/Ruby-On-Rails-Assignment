# Getters and Setters

class Account
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def balance=(amount)
    @balance = amount if amount >= 0
  end
end

acc = Account.new(100)
acc.balance = -50
puts acc.balance
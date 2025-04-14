# Class

class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def show_balance
    puts "Your balance is #{@balance}"
  end

  def withdraw(amount)
    if valid_transaction?(amount)
      @balance -= amount
      puts "Withdrawn #{amount}"
    else
      puts "Invalid transaction"
    end
  end

  private

  def valid_transaction?(amount)
    amount > 0 && amount <= @balance
  end
end

account = BankAccount.new(1000)
account.show_balance
account.withdraw(300)
account.withdraw(800)
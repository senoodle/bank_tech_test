class BankAccount

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

  def statement
    print "date || credit || debit || balance"

  end

end

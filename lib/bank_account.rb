require_relative 'transaction'

class BankAccount

  attr_reader :balance, :transaction

  def initialize(transaction = Transaction)
    @balance = 0
    @transaction = transaction
    @transactions = []

  end

  def deposit(money)
     create_transaction
     @balance += money
  end

  def withdraw(money)
    create_transaction
    @balance -= money
  end

private
  def create_transaction
    @transaction.new
  end
end

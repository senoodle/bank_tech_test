require 'transaction'

class BankAccount

  attr_reader :balance, :transaction

  def initialize(transaction = Transaction, statement = Statement)
    @balance = 0
    @transaction = transaction
    @statement = statement
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

  def print_statement
      @statement.print
    end
private
  def create_transaction
    @transaction.new
  end
end

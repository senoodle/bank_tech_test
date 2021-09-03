require 'transaction'
require 'statement'

class BankAccount

  attr_reader :balance, :transaction_class

  def initialize(transaction_class = Transaction, statement = Statement.new)
    @balance = 0
    @transaction_class = transaction_class
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
    @transaction_class.new
  end
end

require 'bank_account'
require 'transaction'

describe BankAccount do
  let(:bank_account) { BankAccount.new }
  let(:transaction) {Transaction.new}

  context '#initialize' do
    it 'can create an instance of a bank account' do
      expect(bank_account).to be_kind_of(BankAccount)
    end
  end

  context '#balance' do
    it 'can respond to balance' do
      expect(bank_account).to respond_to(:balance)
    end

    it 'should show a zero balance initially' do
      expect(bank_account.balance).to eq(0)
    end
  end

  context '#deposit' do
    it 'should respond to deposit' do
      expect(bank_account).to respond_to(:deposit).with(1).argument
    end

    it 'should update the balance when deposit is called' do
      bank_account.deposit(10)
      expect(bank_account.balance).to eq(10)
    end
  end

  context '#withdraw' do
    it 'should respond to withdraw' do
      expect(bank_account).to respond_to(:withdraw).with(1).argument
    end

    it 'should be able to withdraw money' do
      bank_account.deposit(10)
      bank_account.withdraw(5)
      expect(bank_account.balance).to eq(5)
    end
  end

  context '#create_transaction' do
    it 'should create a transaction' do
      expect(transaction).to be_kind_of(Transaction)
    end

    it 'should store credit and debit info' do
      
    end
  end


end

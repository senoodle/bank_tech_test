require 'bank_account'
require 'transaction'
require 'statement'

describe BankAccount do
  let(:transaction_class_double) { double(:Transaction) }
  let(:transaction_double) { double(:transaction) }
  let(:statement_double) { double(:statement) }
subject { described_class.new(transaction_class_double, statement_double) }
  before do
    allow(transaction_class_double).to receive(:new).and_return(transaction_double)
  end

  context '#initialize' do
    it 'can create an instance of a bank account' do
      expect(subject).to be_kind_of(BankAccount)
    end
  end

  context '#balance' do
    it 'can respond to balance' do
      expect(subject).to respond_to(:balance)
    end

    it 'should show a zero balance initially' do
      expect(subject.balance).to eq(0)
    end
  end

  context '#deposit' do
    it 'should respond to deposit' do
      expect(subject).to respond_to(:deposit).with(1).argument
    end

    it 'should update the balance when deposit is called' do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end
  end

  context '#withdraw' do
    it 'should respond to withdraw' do
      expect(subject).to respond_to(:withdraw).with(1).argument
    end

    it 'should be able to withdraw money' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance).to eq(5)
    end
  end

  context '#create_transaction' do
    it 'should create a transaction' do
      expect(transaction_class_double).to receive(:new).once
      subject.deposit(10)
    end

    it 'should store credit and debit info' do

    end
  end

  context "#print_statement" do
      it "prints statement to console" do
        allow(statement_double).to receive(:print).and_return("You have printed your statement.")
        expect(statement_double).to receive(:print).once
        subject.print_statement

      end
    end

end

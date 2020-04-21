require 'account'

describe Account do
  let(:account) { Account.new(20) }
  describe '#initialize' do
    it 'initializes with zero balance' do
      expect(account.balance).to eq 0
    end
    it 'initializes with empty transactions array' do
      expect(account.transactions).to(be {})
    end
  end
  describe '#deposit' do

    it 'Depositing amount increases balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end
  describe '#withdraw' do
    it 'Withdrawing amount decreases balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq 500
    end
  end
end

require 'account'

describe Account do
  let(:account) { Account.new }
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

    it 'Deposit Transaction is created' do
      account.deposit(1000)
      expect(account.transactions.first).to be_instance_of(Transaction)
    end
    

  end
  describe '#withdraw' do
    it 'Withdrawing amount decreases balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq 500
    end

    it 'Withdrawal transaction is created' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.transactions[1]).to be_instance_of(Transaction)
    end
  end

  describe '#print_statement' do
    it 'prints statement' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.print_statement).to eq account.transactions
    end

    
  end
end

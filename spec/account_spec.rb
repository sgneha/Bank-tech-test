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
    before do
      account.deposit(1000)
    end

    it 'Depositing amount increases balance' do
      expect(account.balance).to eq 1000
    end

    it 'Deposit Transaction is created' do
      expect(account.transactions.first).to be_instance_of(Transaction)
    end

    it 'Second deposit Transaction created has credit amount ' do
      account.deposit(2000)
      expect(account.transactions[1].amount).to eq 2000
    end
  end
  describe '#withdraw' do
    before do
      account.deposit(1000)
    end
    it 'Withdrawing amount decreases balance' do
      account.withdraw(500)
      expect(account.balance).to eq 500
    end

    it 'Withdrawal transaction is created' do
      account.withdraw(500)
      expect(account.transactions[1]).to be_instance_of(Transaction)
    end

    it 'Second withdrawal transaction created has debit amount ' do
      account.withdraw(500)
      account.withdraw(300)
      expect(account.transactions[2].amount).to eq 300
    end

    it 'Withdrawal not successful due to less balance' do
      expect { account.withdraw(1500) }.to raise_error 'Not sufficient balance'
    end

  end
  describe '#print_statement' do
    it 'Prints details of all transactions' do
      account.deposit(1000)
      @time = Time.now
      allow(Time).to receive(:now).and_return(@time)
      expect { account.print_statement }.to output("date || credit || debit || balance \n#{@time.strftime("%d/%m/%Y")}||  1000.00 || ||1000.00").to_stdout
    end
  end
end

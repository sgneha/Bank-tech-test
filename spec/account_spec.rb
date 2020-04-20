require 'account'

describe Account do
  let(:account) { Account.new(20) }
  it 'initializes with account number and balance' do
    expect(account.balance).to eq 0
  end

  it 'Depositing amount increases balance' do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

  it 'Withdrawing amount decreases balance' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq 500
  end
end

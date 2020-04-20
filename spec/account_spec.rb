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
end

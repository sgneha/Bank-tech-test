require 'account'
describe 'User experience in bank' do
  let(:account) { Account.new }
  it 'can deposit money' do
    expect(account.deposit(1000)).to eq "Credit of amount £1000 was successfull"
  end
  it 'can withdraw money' do
    account.deposit(1000)
    expect(account.withdraw(500)).to eq "Debit of amount £500 was successfull"
  end
  it 'gets error when withdrawal amount is greater than balance' do
    account.deposit(1000)
    expect { account.withdraw(2000) }.to raise_error 'Not sufficient balance'
  end
end

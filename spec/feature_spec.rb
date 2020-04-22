require 'account'
describe 'User experience in bank features' do
  let(:account) { Account.new }
  it 'can deposit money' do
   
    expect(account.deposit(1000)).to eq "Credit of amount £1000 was successfull"
      
  end
end

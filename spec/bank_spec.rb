require 'bank'
describe Bank do 
  let(:bank) { Bank.new(111) }
  describe '#initialize' do
    it 'initializes bank with a account' do
      expect(bank.account).to be_instance_of(Account)
    end 
  end
  describe '#deposit_money' do
    it 'balance of account increases' do
      bank.deposit_money(100)
      expect(bank.account.balance).to eq 100
    end
  end
  describe '#withdraw_money' do
    it 'balance of account decreases' do
      bank.deposit_money(100)
      bank.withdraw_money(20)
      expect(bank.account.balance).to eq 80
    end
  end
end

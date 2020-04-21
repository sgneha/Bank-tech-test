require 'bank'
describe Bank do 
  describe '#initialize' do
    it 'initializes bank with a account' do
      bank = Bank.new(10)
      expect(bank.account).to be_instance_of(Account)
    end 
  end
end

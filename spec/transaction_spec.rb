require 'transaction'
describe 'Transaction' do

  let(:transaction) { Transaction.new(:credit, 1000, 2000) }
  describe '#initialize' do
    
    it 'new transaction with type' do
      expect(transaction.type).to eq :credit
    end
    it 'new transaction with amount' do
      expect(transaction.amount).to eq 1000
    end
    it 'new transaction with balance' do
      expect(transaction.balance).to eq 2000
    end
  end
end

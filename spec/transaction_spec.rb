require 'transaction'
describe 'Transaction' do

  let(:transaction) { Transaction.new(:credit, 1000, 2000) }
  @time = Time.now
  
  describe '#initialize' do
    
    it 'transaction with type' do
      expect(transaction.type).to eq :credit
    end
    it 'transaction with amount' do
      expect(transaction.amount).to eq 1000
    end
    it 'transaction with balance' do
      expect(transaction.balance).to eq 2000
    end
    it 'transaction with date' do
      allow(Time).to receive(:now).and_return(@time)
      expect(transaction.date).to eq @time
    end
    
  end
end

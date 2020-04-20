require 'transaction'
describe 'Transaction' do

  let(:transaction) { Transaction.new }

  it 'initiates the transaction with a empty transaction details' do
    expect(transaction.transaction_detail).to(be {})
  end
  
end

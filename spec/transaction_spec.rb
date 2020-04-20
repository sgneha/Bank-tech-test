require 'transaction'
describe 'Transaction' do

  let(:transaction) { Transaction.new }

  it 'initiates the transaction with a empty transaction details' do
    expect(transaction.transaction_detail).to(be {})
  end

  it 'saves details of credit transaction made' do
    transaction.make_deposit(10, 1000, 5000)
    expect(transaction.transaction_detail[:balance]).to eq 5000
  end

  
end

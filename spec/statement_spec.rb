require 'statement'
describe 'Statement' do  
  let(:transaction) { double :transaction, 
                             date: Time.now, 
                              type: :credit, 
                              amount: 1000.00, 
                              balance: 1000.00
     
  }  

  let(:transactions) { [transaction] }
 
  it 'prints transaction with header' do
    @time = Time.now
    allow(Time).to receive(:now).and_return(@time)
    statement = Statement.new(transactions)
    expect(statement.printer).to eq "date || credit || debit || balance \n#{@time}||1000.00||1000.00"
  end
end

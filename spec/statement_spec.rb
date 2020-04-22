require 'statement'
describe 'Statement' do
  statement = Statement.new([])
  it 'prints the empty array when no transactions' do
    expect(statement.printer).to be_empty
  end
end

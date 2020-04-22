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
  it 'can print bank statement' do
    @time = Time.now.strftime("%d/%m/%Y")
    account.deposit(1000)
    account.withdraw(500)
    expect { account.print_statement }.to output("date || credit || debit || balance \n#{@time}|| || 500.00 ||500.00\n#{@time}||  1000.00 || ||1000.00").to_stdout
  end
  it 'can print blank bank statement if no transactions' do
    expect { account.print_statement }.to output("date || credit || debit || balance ").to_stdout
  end
end

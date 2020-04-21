class Account
  attr_reader :account_no, :balance, :transactions
  def initialize(account_no)
    @account_no = account_no
    @balance = 0
    @transactions = []
 
  end  

  def deposit(amount)
    @balance += amount
    transaction = Transaction.new('credit', amount, balance)
    @transactions.push(transaction)
    
  end

  def withdraw(amount)
    @balance -= amount
    transaction = Transaction.new('debit', amount, balance)
    @transactions.push(transaction)
    
  end

end

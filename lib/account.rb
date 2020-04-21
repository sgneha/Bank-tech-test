class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end
  
  def create_transaction(type, amount, balance)
    Transaction.new(type, amount, balance)
  end  

  def deposit(amount)
    @balance += amount
    transaction = create_transaction(:credit, amount, balance)
    @transactions.push(transaction)
    
  end

  def withdraw(amount)
    @balance -= amount
    transaction = create_transaction(:debit, amount, balance)
    @transactions.push(transaction)
    
  end

  def print_statement
    @transactions
  end

end

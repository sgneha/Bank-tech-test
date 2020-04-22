class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end   

  def deposit(amount)
    @balance += amount
    transaction = store_transaction(:credit, amount, balance)
    @transactions.push(transaction)
    "Credit of amount £#{amount} was successfull"
    
  end

  def withdraw(amount)
    fail 'Not sufficient balance' unless valid_transaction(amount)

    @balance -= amount
    transaction = store_transaction(:debit, amount, balance)
    @transactions.push(transaction)
    "Debit of amount £#{amount} was successfull"
  end

  def print_statement
    statement = Statement.new(@transactions)
    statement.printer
  end
  
  private

  def store_transaction(type, amount, balance)
    Transaction.new(type, amount, balance)
  end  

  def valid_transaction(amount)
    amount <= balance
  end
end

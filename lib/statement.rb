class Statement
    
  HEADER = "date || credit || debit || balance "

  attr_reader :transactions
  def initialize(transactions)
    @transactions = transactions
  end

  def printer
    history = []
    history << HEADER
    @transactions.each do |transaction|
      history << "#{transaction.date}" + "||" + "#{select_type(transaction)}" + "||" + "#{format(transaction.balance)}" 
    end
    history.join("\n")
  end
  private
  
  def select_type(transaction)
    amount = format(transaction.amount)
    transaction.type == :credit ? "  #{amount} || " : " || #{amount} "
  end

  def format(value)
    "%0.2f" % value
  end
end

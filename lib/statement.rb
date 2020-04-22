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
      history << "#{transaction.date}" + "||" + "#{format(transaction.amount)}" + "||" + "#{format(transaction.balance)}" 
    end
    history.join("\n")
  end
  private
  def format(value)
    "%0.2f" % value
  end
end

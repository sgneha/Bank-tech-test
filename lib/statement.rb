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
      history << "#{transaction.date}" + "||" + "#{transaction.amount}" + "||" + "#{transaction.balance}" 
    end
    history.join("\n")
  end
end

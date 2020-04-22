class Statement
    
  HEADER = "date || credit || debit || balance "

  attr_reader :transactions
  def initialize(transactions)
    @transactions = transactions
  end

  def printer
    history = []
    history << HEADER
    @transactions.reverse.each do |line|
      history << "#{line.date.strftime("%d/%m/%Y")}" + "||" + "#{select_type(line)}" + "||" + "#{format(line.balance)}" 
    end
    print history.join("\n")
  end
  private
  
  def select_type(line)
    amount = format(line.amount)
    line.type == :credit ? "  #{amount} || " : " || #{amount} "
  end

  def format(value)
    "%0.2f" % value
  end
end

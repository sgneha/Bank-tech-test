class Transaction

  attr_reader :date, :type, :amount, :balance

  def initialize(type, amount, balance)
    @date = Time.now
    @type = type
    @amount = amount
    @balance = balance
  end

end

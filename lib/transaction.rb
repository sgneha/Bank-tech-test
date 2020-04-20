class Transaction

  attr_reader :transaction_detail

  def initialize
    @transaction_detail = {}
  end

  def make_deposit(account_no, amount, balance)
    @transaction_detail[:account_no] = account_no
    @transaction_detail[:date] = Time.now
    @transaction_detail[:credit] = amount
    @transaction_detail[:balance] = balance
  end
end

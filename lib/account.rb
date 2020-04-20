class Account
  attr_reader :account_no, :balance
  def initialize(account_no)
    @account_no = account_no
    @balance = 0
  end

  def deposit(amount)
    @balance += amount

  end
end

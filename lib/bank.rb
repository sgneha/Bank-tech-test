class Bank
  attr_reader :account
  def initialize(account_no)
    @account = Account.new(account_no)
  end

  def deposit_money(amount)
    @account.deposit(amount)
  end
  
  def withdraw_money(amount)
    @account.withdraw(amount)
  end
end
